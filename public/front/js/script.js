document.addEventListener('DOMContentLoaded', () => {
    const searchBox = () => {
        const searchBox = document.querySelectorAll('.searchBox'),
              searchBoxMobile = document.querySelectorAll('.searchBox_mobile'),
              subheaderImgWrapper = document.querySelector('.subheader__imgWrapper'),
              closeInput = document.querySelectorAll('.searchEffect'),
              btnSubmit = document.querySelector('.btnSubmit'),
              input = document.querySelectorAll('.searchBox input');

        searchBox.forEach((item) => {
            item.addEventListener('click', (e) => {
                item.classList.add('active');
                btnSubmit.style.display = 'none';
            });
        });
        // searchBox.addEventListener('click', (e) => {
        //     searchBox.classList.add('active');
        //     btnSubmit.style.display = 'none';
        // });

        searchBoxMobile.forEach((item) => {
            item.addEventListener('click', (e) => {
                item.classList.add('active');
                subheaderImgWrapper.classList.add('hide');
            });
        })
        // searchBoxMobile.addEventListener('click', (e) => {
        //     searchBoxMobile.classList.add('active');
        //     subheaderImgWrapper.classList.add('hide');
        // });

        closeInput.forEach((item) => {
           item.addEventListener('click', (e) => {
               e.stopPropagation()
               const parent = item.parentElement;

               parent.classList.remove('active');
               subheaderImgWrapper.classList.remove('hide');
               input.forEach((item) => {
                   item.value = '';
               })

               setTimeout(() => {
                   btnSubmit.style.display = 'block';
               }, 300)
           });
        });
    };
    searchBox();

    const niceSelect = () => {
        $(document).ready(function () {
            $('select').niceSelect();
        })
    };
    niceSelect();

    const dropdown = () => {
        const selected = document.querySelectorAll('.selected');

        selected.forEach((item) => {
            item.addEventListener('click', (e) => {
                e.stopPropagation();

                const parent = item.parentElement;
                parent.classList.toggle('active');
            });
        });

        document.addEventListener('click', function (e) {
            selected.forEach((item) => {
                const parent = item.parentElement;
                parent.classList.remove('active');
            });
        });
    };
    dropdown();

    const changesTabs = () => {
        const tabsParent = document.querySelector('.tabs'),
              tabs = document.querySelectorAll('.tab'),
              content = document.querySelectorAll('.auth__content'),
              authTitle = document.querySelector('.auth__title');

        if (tabsParent) {
            function textChanges() {
                if (tabs[0].classList.contains('active')) {
                    authTitle.textContent = 'Welcome back';
                } else {
                    authTitle.textContent = 'Create account';
                }
            }
            textChanges();
        }

        if (tabsParent) {
            const hideContent = () => {
                tabs.forEach((item) => {
                    item.classList.remove('active');
                });

                content.forEach((item) => {
                    item.classList.remove('active');
                });
            };
            const showContent = (i = 1) => {
                tabs[i].classList.add('active');
                content[i].classList.add('active');
            };

            hideContent();
            showContent();

            tabsParent.addEventListener('click', (e) => {
                const target = e.target;
                if (target.classList.contains('tab')) {
                    tabs.forEach((item, i) => {
                        if (target === item) {
                            hideContent();
                            showContent(i);
                        }
                    });

                    textChanges();
                }
            });
        }
    };
    changesTabs();

    const customModals = () => {
        const closeModal = () => {
            const closeModalBtn = document.querySelectorAll('.customModal__close');

            closeModalBtn.forEach((item) => {
                item.addEventListener('click', () => {
                    document.body.style.overflow = '';
                    $('.blackout').fadeOut();
                    $('.customModal').fadeOut();
                });
            });
        };
        closeModal();

        const profileEditInfo = () => {
            const profileEditBtn = document.querySelector('.profile__editBtn');

            if (profileEditBtn) {
                profileEditBtn.addEventListener('click', () => {
                    document.body.style.overflow = 'hidden';
                    $('.blackout').fadeIn();
                    $('.customModalEditInfo').fadeIn();
                });
            }
        };
        profileEditInfo();

        const editPassword = () => {
            const editPass = document.querySelector('.editPass');

            if (editPass) {
                editPass.addEventListener('click', () => {
                    document.body.style.overflow = 'hidden';
                    $('.blackout').fadeIn();
                    $('.customModalEditPassword').fadeIn();
                });
            }
        };
        editPassword();
    };
    customModals();

    const aosJs = () => {
        AOS.init();
    };
    aosJs();

    const hamburgerMenu = () => {
        const hamburger = document.querySelector('.hamburger'),
              hamburgerMenu = document.querySelector('.hamburgerMenu'),
              hamburgerMenuClose = document.querySelector('.hamburgerMenu__close');

        if (hamburger) {
            hamburger.addEventListener('click', () => {
                hamburgerMenu.classList.add('active');
            });

            hamburgerMenuClose.addEventListener('click', () => {
                hamburgerMenu.classList.remove('active');
            });
        }
    };
    hamburgerMenu();

    const upload = (selector, selector2, options = {}) => {
        let files = [];
        const input = document.querySelector(selector),
              input2 = document.querySelector(selector2),
              dragContentWrapper = document.querySelector('.dragContentWrapper');

        if (input && input2) {
            if (options.multi) {
                input.setAttribute('multiple', true);
                input2.setAttribute('multiple', true);
            }

            if (options.accept && Array.isArray(options.accept)) {
                input.setAttribute('accept', options.accept.join(','));
                input2.setAttribute('accept', options.accept.join(','));
            }

            const changeHandler = event => {
                if (!event.target.files.length) {
                    return
                }

                files = Array.from(event.target.files);

                files.forEach(file => {
                    if (!file.type.match('image')) {
                        return
                    }
                    const reader = new FileReader();

                    reader.onload = ev => {
                        const src = ev.target.result;

                        dragContentWrapper.insertAdjacentHTML('afterbegin', `
                    <div class="dragContent">
                        <div class="dragContent__head">
                            <img class="dragContent__img" src="${src}" alt="drag_img">
                            <img class="dragContent__close" data-name="${file.name}" src="icons/drag_close.svg" alt="drag_close">
                        </div>
                        <div class="dragContent__footer">
                            <h5 class="dragContent__name">${file.name}</h5>
                            <h6 class="dragContent__size">${bytesToSize(file.size)}</h6>
                        </div>
                    </div>
                    `)
                    }

                    reader.readAsDataURL(file);
                })

                function bytesToSize(bytes) {
                    const sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB']
                    if (!bytes) {
                        return '0 Byte'
                    }
                    const i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)))
                    return Math.round(bytes / Math.pow(1024, i)) + ' ' + sizes[i]
                }
                input.value = '';
            }
            input.addEventListener('change', changeHandler);
            input2.addEventListener('change', changeHandler);

            const removeImg = event => {
                if (!event.target.dataset.name) {
                    return
                }

                const {name} = event.target.dataset;
                files = files.filter(file => file.name !== name);

                const block = dragContentWrapper
                    .querySelector(`[data-name="${name}"]`)
                    .closest('.dragContent');

                block.classList.add('deleted')
                setTimeout(() => {
                    block.remove();
                }, 400)
            };

            dragContentWrapper.addEventListener('click', removeImg)
        }

    }
    upload('#file', '#qqq',{
        multi: true,
        accept: ['.png', '.jpg', '.jpeg', '.gif', '.xlsx']
    });

    const changeFont = () => {
        const minFont = document.querySelector('.chanceFont__min'),
              maxFont = document.querySelector('.chanceFont__max'),
              text = document.querySelector('.insideOfArticle__main-descr');

        if (minFont && maxFont) {
            let textSize = 16,
                lineHeightText = 30;

            minFont.addEventListener('click', () => {
                textSize -= 2;
                lineHeightText -= 5;

                text.style.fontSize = textSize + 'px';
                text.style.lineHeight = lineHeightText + 'px';
            });
            maxFont.addEventListener('click', () => {
                textSize += 2;
                lineHeightText += 5;

                text.style.fontSize = textSize + 'px';
                text.style.lineHeight = lineHeightText + 'px';
            });
        }
    }
    changeFont();
});