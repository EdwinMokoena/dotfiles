Vim�UnDo� ��2=����d�",�c z0��.���`�Ⱦ�a      H  path("edit/<int:pk>", EditArticleView.as_view(), name="edit_article"),            &       &   &   &    ^Y�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             ^M��    �               P    url(r"^write-new-article/$", CreateArticleView.as_view(), name="write_new"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^M��    �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               8    url(r"^$", ArticlesListView.as_view(), name="list"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �                 from django.conf.urls import url5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��    �                from django.urls import url5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��    �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               5    url("", ArticlesListView.as_view(), name="list"),5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               Q    url(r"^write-new-question/$", CreateArticleView.as_view(), name="write_new"),5�_�      
           	      
    ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               R    path(r"^write-new-question/$", CreateArticleView.as_view(), name="write_new"),5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               Q    path("^write-new-question/$", CreateArticleView.as_view(), name="write_new"),5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               Q    path("/write-new-question/$", CreateArticleView.as_view(), name="write_new"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               ?    url(r"^drafts/$", DraftsListView.as_view(), name="drafts"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               >    url(r"^drafts/", DraftsListView.as_view(), name="drafts"),5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               =    url(r"drafts/", DraftsListView.as_view(), name="drafts"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               P    path("/write-new-question/", CreateArticleView.as_view(), name="write_new"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               P    url(r"^edit/(?P<pk>\d+)/$", EditArticleView.as_view(), name="edit_article"),5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             ^T��     �               O    url(r"edit/(?P<pk>\d+)/$", EditArticleView.as_view(), name="edit_article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�
     �               <    url("drafts/", DraftsListView.as_view(), name="drafts"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�     �               N    url("edit/(?P<pk>\d+)/$", EditArticleView.as_view(), name="edit_article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�     �               M    url(r"^(?P<slug>[-\w]+)/$", DetailArticleView.as_view(), name="article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�     �               O    path("edit/(?P<pk>\d+)/$", EditArticleView.as_view(), name="edit_article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�     �               I    path("edit/(?P<pk>", EditArticleView.as_view(), name="edit_article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�      �               F    path("edit/<pk>", EditArticleView.as_view(), name="edit_article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�$     �               =    path("drafts/", DraftsListView.as_view(), name="drafts"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�%     �               O    path("write-new-question/", CreateArticleView.as_view(), name="write_new"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�&     �               6    path("", ArticlesListView.as_view(), name="list"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�)     �               N    path(r"^(?P<slug>[-\w]+)/$", DetailArticleView.as_view(), name="article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�,     �               E  path("edit/<:pk>", EditArticleView.as_view(), name="edit_article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�/     �               L  path(r"^(?P<slug>[-\w]+)/$", DetailArticleView.as_view(), name="article"),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^T�7     �               C  path(r"^(?P<slug>", DetailArticleView.as_view(), name="article"),5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^T�9     �               ?  path(r"<slug>", DetailArticleView.as_view(), name="article"),5�_�      !                  
    ����                                                                                                                                                                                                                                                                                                                                                             ^T�@     �               >  path("<slug>", DetailArticleView.as_view(), name="article"),5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             ^T�C     �               C  path("<sslug:lug>", DetailArticleView.as_view(), name="article"),5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             ^T�D    �               B  path("<slug:lug>", DetailArticleView.as_view(), name="article"),5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             ^T�E    �             5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             ^Y�     �               H  path("edit/<int:pk>", EditArticleView.as_view(), name="edit_article"),5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             ^Y�    �               J  path("edit/<int:slug>", EditArticleView.as_view(), name="edit_article"),5�_�   %               &          ����                                                                                                                                                                                                                                                                                                                                                             ^Y�    �             5��