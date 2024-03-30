import QtQuick
import QtQuick.Controls
import Dimensions 1.0
import QmlExtension 1.0

QmlObject {
    id: root

    property alias infoBoxes: infoBoxes



    QmlObject {
        id: infoBoxes

        property alias booksModel: booksModel
        property alias biography: biography
        property alias startRead: startRead
        property alias contacts: contacts

        ListModel {
            id: booksModel
            ListElement { title: "ЯКУТСКИЙ\nПЛЕННИК";
                          subtitle: "ДЕБЮТНЫЙ СБОРНИК РАССКАЗОВ";
                          description: "ПРОДАНО БОЛЕЕ 3 МЛН КОПИЙ ПО ВСЕМУ МИРУ. ПОГРУЗИТЕСЬ В УДИВИТЕЛЬНЫЙ МИР РАССКАЗОВ И ИСТОРИЙ";
                        }

            ListElement { title: "ЯКУТСКИЙ ПЛЕННИК";
                          subtitle: "ДЕБЮТНЫЙ СБОРНИК РАССКАЗОВ";
                          description: "ПРОДАНО БОЛЕЕ 3 МЛН КОПИЙ ПО ВСЕМУ МИРУ. ПОГРУЗИТЕСЬ В УДИВИТЕЛЬНЫЙ МИР РАССКАЗОВ И ИСТОРИЙ";
                        }

            ListElement { title: "ЯКУТСКИЙ ПЛЕННИК";
                          subtitle: "ДЕБЮТНЫЙ СБОРНИК РАССКАЗОВ";
                          description: "ПРОДАНО БОЛЕЕ 3 МЛН КОПИЙ ПО ВСЕМУ МИРУ. ПОГРУЗИТЕСЬ В УДИВИТЕЛЬНЫЙ МИР РАССКАЗОВ И ИСТОРИЙ";
                        }

        } // booksModel


        QmlObject {
            id: biography
            property string title: "ОБ АВТОРЕ"
            property string subtitle: "ГЛУШКОВ ИГОРЬ МИХАЙЛОВИЧ"
            property string description: "РОДИЛСЯ В <b>ОМСКЕ</b> В 1957<br>
                                        В 1984 ОКОНЧИЛ <b>СИБАДИ</b><br>
                                        В 1995 ОКОНЧИЛ <b>ВМЗФЭИ</b><br>
                                        СЛУЖИЛ В ВОЙСКАХ <b>ПВО</b><br>
                                        <b>КМС</b> ПО ПЛАВАНИЮ<br>
                                        РУКОВОДИЛ ПРОЕКТОМ <b>АЭРОПОРТ “ФЕДОРОВКА”</b>"
            property var buttons: ["подробнее"]

        } // biographyModel


        QmlObject {
            id: startRead
            property string title: "КНИГИ"
            property string subtitle: ""
            property string description: Dimensions.isDesktop
                                         ? "ВЫ МОЖЕТЕ СКАЧАТЬ КНИГИ, ЧИТАТЬ ИХ ОНЛАЙН, А ТАКЖЕ СЛУШАТЬ АУДИОКНИГИ"
                                         : "ВЫ МОЖЕТЕ БЕСПЛАТНО СКАЧАТЬ, ЧИТАТЬ ОНЛАЙН И СЛУШАТЬ"
            property var buttons: ["читать"]

        } // startRead


        QmlObject {
            id: contacts
            property string title: "КОНТАКТЫ"
            property string subtitle: ""
            property string description: "ЕСЛИ ВОЗНИКЛИ ВОПРОСЫ, ИДЕИ И ПРЕДЛОЖЕНИЯ"
            property var buttons: ["вк", "тг", "fb", "email"]
        }

    } // infoBoxes


} // root
