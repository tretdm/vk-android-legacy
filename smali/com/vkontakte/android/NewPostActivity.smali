.class public Lcom/vkontakte/android/NewPostActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "NewPostActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;
.implements Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;


# static fields
.field public static final NOTIFY_ID:I = 0x1

.field public static final NOTIFY_ID_PROGR:I = 0x2


# instance fields
.field private final AUDIO_RESULT:I

.field private final CAMERA_RESULT:I

.field private final DOCUMENT_RESULT:I

.field private final GALLERY_RESULT:I

.field private final LOCATION_RESULT:I

.field private final VIDEO_RESULT:I

.field private attachView:Lcom/vkontakte/android/ui/MultiAttachView;

.field private attachments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field camIntent:Landroid/content/Intent;

.field cancelBtn:Lcom/vkontakte/android/TitleBarButton;

.field exportToFacebook:Z

.field exportToTwitter:Z

.field friendsOnly:Z

.field fromGroup:Z

.field private geoAttach:Lcom/vkontakte/android/GeoAttachment;

.field private geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

.field imageUri:Landroid/net/Uri;

.field private locationListener:Landroid/location/LocationListener;

.field private locationLoading:Z

.field mdSetup:Z

.field mentionDlg:Landroid/app/AlertDialog$Builder;

.field needPostAfterLocation:Z

.field notification:Landroid/app/Notification;

.field photoDlg:Landroid/app/AlertDialog$Builder;

.field photoDlg2:Landroid/app/AlertDialog$Builder;

.field progrDlg:Landroid/app/ProgressDialog;

.field progrDlg2:Landroid/app/ProgressDialog;

.field progrDlg3:Landroid/app/ProgressDialog;

.field publishing:Z

.field private saveDraft:Z

.field sendBtn:Lcom/vkontakte/android/TitleBarButton;

.field signedFromGroup:Z

.field uid:I

.field uploadView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 62
    iput v2, p0, Lcom/vkontakte/android/NewPostActivity;->CAMERA_RESULT:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->GALLERY_RESULT:I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->LOCATION_RESULT:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->AUDIO_RESULT:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->VIDEO_RESULT:I

    .line 67
    const/4 v0, 0x6

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->DOCUMENT_RESULT:I

    .line 75
    iput v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    .line 84
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->publishing:Z

    .line 85
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 88
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->needPostAfterLocation:Z

    .line 91
    iput-boolean v2, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    .line 96
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showMentionDialog()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Vector;I)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewPostActivity;->addAttachment(Ljava/util/Vector;I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/LocationAttachView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showExtendedAttachMenu()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startAudioSelector()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startVideoSelector()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startDocumentSelector()V

    return-void
.end method

.method private addAttachment(Ljava/util/Vector;I)V
    .locals 5
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "atts":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-boolean v1, v1, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    if-eqz v1, :cond_1

    .line 642
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v2, Lcom/vkontakte/android/NewPostActivity$25;

    invoke-direct {v2, p0, p1, p2}, Lcom/vkontakte/android/NewPostActivity$25;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Vector;I)V

    .line 644
    const-wide/16 v3, 0x64

    .line 642
    invoke-virtual {v1, v2, v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 647
    .local v0, "a":Ljava/lang/String;
    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 652
    :goto_1
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v1}, Lcom/vkontakte/android/NewPostActivity;->addAttachment(Ljava/util/Vector;I)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private changeConfig(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x3

    const/4 v6, -0x2

    const/4 v4, -0x3

    const/4 v2, 0x0

    .line 1150
    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v3, :cond_0

    .line 1151
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    const/4 v1, 0x1

    .line 1153
    .local v1, "thin":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1154
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1155
    if-eqz v1, :cond_3

    move v3, v6

    :goto_2
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1156
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1159
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_4

    :goto_3
    int-to-float v3, v4

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1160
    if-eqz v1, :cond_5

    :goto_4
    int-to-float v2, v6

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1161
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "thin":Z
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1151
    goto :goto_0

    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "thin":Z
    :cond_2
    move v3, v5

    .line 1154
    goto :goto_1

    :cond_3
    move v3, v2

    .line 1155
    goto :goto_2

    :cond_4
    move v4, v5

    .line 1159
    goto :goto_3

    :cond_5
    move v6, v2

    .line 1160
    goto :goto_4
.end method

.method private setThumbBitmap(ILandroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "border"    # Z

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "v":Landroid/widget/ImageView;
    packed-switch p1, :pswitch_data_0

    .line 1091
    :goto_0
    if-nez v0, :cond_3

    .line 1093
    :goto_1
    return-void

    .line 1082
    :pswitch_0
    if-eqz p3, :cond_0

    const v1, 0x7f060133

    :goto_2
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "v":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1083
    .restart local v0    # "v":Landroid/widget/ImageView;
    goto :goto_0

    .line 1082
    :cond_0
    const v1, 0x7f060132

    goto :goto_2

    .line 1085
    :pswitch_1
    if-eqz p3, :cond_1

    const v1, 0x7f060135

    :goto_3
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "v":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1086
    .restart local v0    # "v":Landroid/widget/ImageView;
    goto :goto_0

    .line 1085
    :cond_1
    const v1, 0x7f060134

    goto :goto_3

    .line 1088
    :pswitch_2
    if-eqz p3, :cond_2

    const v1, 0x7f060137

    :goto_4
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "v":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "v":Landroid/widget/ImageView;
    goto :goto_0

    :cond_2
    const v1, 0x7f060136

    goto :goto_4

    .line 1092
    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showAttachThumb(IZZ)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "show"    # Z
    .param p3, "border"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1058
    const/4 v0, 0x0

    .local v0, "v1":Landroid/view/View;
    const/4 v1, 0x0

    .line 1059
    .local v1, "v2":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 1073
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1076
    :cond_0
    :goto_1
    return-void

    .line 1061
    :pswitch_0
    const v2, 0x7f060132

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1062
    const v2, 0x7f060133

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1063
    goto :goto_0

    .line 1065
    :pswitch_1
    const v2, 0x7f060134

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    const v2, 0x7f060135

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1067
    goto :goto_0

    .line 1069
    :pswitch_2
    const v2, 0x7f060136

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1070
    const v2, 0x7f060137

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1074
    :cond_1
    if-eqz p2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    if-eqz p3, :cond_3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v2, v4

    .line 1074
    goto :goto_2

    :cond_3
    move v3, v4

    .line 1075
    goto :goto_3

    .line 1059
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showExtendedAttachMenu()V
    .locals 3

    .prologue
    .line 562
    const v0, 0x7f0a0023

    .line 563
    .local v0, "rID":I
    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_group_admin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "edit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    const v0, 0x7f0a0022

    .line 565
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 566
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$22;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$22;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 588
    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 589
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 590
    return-void
.end method

.method private showMentionDialog()V
    .locals 4

    .prologue
    .line 615
    sget-object v0, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 616
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->setupMentionDlg()V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 638
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/cache/FriendsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 622
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    .line 623
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$23;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewPostActivity$23;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$24;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewPostActivity$24;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 635
    const-wide/16 v2, 0x64

    .line 632
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startAudioSelector()V
    .locals 3

    .prologue
    .line 593
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 598
    :goto_0
    return-void

    .line 594
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    const-string v1, "oid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startDocumentSelector()V
    .locals 3

    .prologue
    .line 608
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 612
    :goto_0
    return-void

    .line 609
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/DocumentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startVideoSelector()V
    .locals 3

    .prologue
    .line 601
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 603
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public extractPhoto()V
    .locals 4

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 809
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URI="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    .line 811
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 812
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 813
    return-void
.end method

.method public friendListLoaded()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 854
    new-instance v0, Lcom/vkontakte/android/NewPostActivity$31;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewPostActivity$31;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 860
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 758
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 763
    const-string v3, "point"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/GeoAttachment;

    iput-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 764
    const v3, 0x7f060139

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200a5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 765
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 766
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v10}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 767
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V

    goto :goto_0

    .line 771
    :cond_2
    if-ne p1, v8, :cond_3

    .line 772
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->extractPhoto()V

    .line 773
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 775
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 776
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    .line 777
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->extractPhoto()V

    .line 778
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 780
    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 781
    const-string v3, "audio"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 782
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "audio"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 783
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 784
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v3, v10}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 785
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Aaudio"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v5, v0}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 788
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    .line 789
    const-string v3, "video"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/VideoFile;

    .line 790
    .local v2, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "video"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 792
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v3, v10}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 793
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Avideo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 796
    .end local v2    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_6
    const/4 v3, 0x6

    if-ne p1, v3, :cond_0

    .line 797
    const-string v3, "document"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Document;

    .line 798
    .local v1, "doc":Lcom/vkontakte/android/api/Document;
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doc"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/vkontakte/android/api/Document;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/vkontakte/android/api/Document;->did:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    const-string v6, "|"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 800
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v3, v10}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 801
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adoc"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/vkontakte/android/api/Document;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/vkontakte/android/api/Document;->did:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v5, v1}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onAllAttachmentsRemoved()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1048
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v0, 0x7f06012f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 1049
    return-void

    .line 1048
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachmentRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 1145
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1146
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewPostActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 1147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 32
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "edit"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    const v27, 0x7f090202

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 106
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "uid"

    sget v29, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 108
    const v27, 0x7f030046

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setContentView(I)V

    .line 110
    sget-boolean v27, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v27, :cond_1

    .line 111
    const v27, 0x7f060180

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const v28, 0x7f020248

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    const v27, 0x7f060180

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/high16 v28, 0x40e00000    # 7.0f

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v28

    const/16 v29, 0x0

    const/high16 v30, 0x40e00000    # 7.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v27 .. v31}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x1

    const/high16 v28, 0x43480000    # 200.0f

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v28

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 115
    const v27, 0x7f06012f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v27

    const/16 v28, 0x20

    invoke-virtual/range {v27 .. v28}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 122
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 124
    new-instance v28, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v30, "edit"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    const v27, 0x7f09009f

    :goto_0
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->addViewAtRight(Landroid/view/View;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/TitleBarButton;->setActiveBG()V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    const v28, 0x33d6bf95    # 1.0E-7f

    const/16 v29, 0x0

    const/high16 v30, -0x40800000    # -1.0f

    const v31, -0xb6783f

    invoke-virtual/range {v27 .. v31}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v27, 0x40400000    # 3.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 130
    const/high16 v27, 0x42b60000    # 91.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 134
    new-instance v27, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f09001c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->addViewAtLeft(Landroid/view/View;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v27, 0x40400000    # 3.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 138
    const/high16 v27, 0x42a00000    # 80.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 139
    const/high16 v27, 0x3f800000    # 1.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 142
    const v27, 0x7f06012f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$1;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 146
    const-wide/16 v29, 0x64

    .line 142
    invoke-virtual/range {v27 .. v30}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$2;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$3;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v27, 0x7f060130

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$4;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v27, 0x7f060139

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$5;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v27, 0x7f060138

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$6;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$6;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v27, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f090021

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    sget-object v27, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-nez v27, :cond_2

    new-instance v27, Ljava/util/Vector;

    invoke-direct/range {v27 .. v27}, Ljava/util/Vector;-><init>()V

    sput-object v27, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 218
    :cond_2
    sget-object v27, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v27

    if-lez v27, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->setupMentionDlg()V

    .line 232
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0003

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "items":[Ljava/lang/String;
    new-instance v27, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f09001f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$7;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$7;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v13, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    sget-object v27, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string v28, "android.hardware.camera"

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Global;->hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 249
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0004

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 250
    .local v14, "items2":[Ljava/lang/String;
    const/4 v4, 0x1

    .line 255
    .local v4, "_hasCam":Z
    :goto_1
    move v11, v4

    .line 257
    .local v11, "hasCam":Z
    new-instance v27, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->photoDlg2:Landroid/app/AlertDialog$Builder;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg2:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f090020

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg2:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/vkontakte/android/NewPostActivity$8;-><init>(Lcom/vkontakte/android/NewPostActivity;Z)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "qp"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->startCamera()V

    .line 285
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "qp"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->startGallery()V

    .line 289
    :cond_6
    const v27, 0x7f06012f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$9;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$9;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 304
    const v27, 0x7f06013a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setOnAttachActionListener(Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;)V

    .line 306
    const-string v27, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "text"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "link_title"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 308
    :cond_7
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "text"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 309
    .local v24, "txt":Ljava/lang/String;
    const/4 v15, 0x0

    .line 310
    .local v15, "link":Ljava/lang/String;
    const-string v27, "((?:(?:http|https)://)[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 311
    .local v21, "ptn":Ljava/util/regex/Pattern;
    if-eqz v24, :cond_8

    .line 312
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 313
    .local v18, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 314
    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 315
    const-string v27, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 316
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 320
    .end local v18    # "m":Ljava/util/regex/Matcher;
    :cond_8
    if-eqz v15, :cond_9

    .line 321
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x1e

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_15

    const/16 v27, 0x0

    const/16 v28, 0x1e

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    :goto_2
    const-string v28, "http://"

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "https://"

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 322
    .local v16, "linkPreview":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "|"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "|"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090019

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 325
    .end local v16    # "linkPreview":Ljava/lang/String;
    :cond_9
    if-eqz v24, :cond_16

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "link_title"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 326
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "link_title"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 330
    :cond_a
    :goto_3
    const v27, 0x7f06012f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v15    # "link":Ljava/lang/String;
    .end local v21    # "ptn":Ljava/util/regex/Pattern;
    .end local v24    # "txt":Ljava/lang/String;
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "photoURI"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "photoURI"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 345
    :cond_c
    const v27, 0x7f06012e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/XLinearLayout;->setOnKeyboardStateListener(Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;)V

    .line 347
    const v27, 0x7f060131

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$10;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$10;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v27, 0x7f06013b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/ui/LocationAttachView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    .line 360
    const v27, 0x7f060010

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$11;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$11;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    new-instance v27, Lcom/vkontakte/android/NewPostActivity$12;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$12;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v27, v0

    sget v28, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    :cond_d
    const-string v27, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "edit"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_10

    .line 408
    const-string v27, "post_draft"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 409
    .local v20, "prefs":Landroid/content/SharedPreferences;
    const-string v27, "text"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 410
    const v27, 0x7f06012f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    const-string v28, "text"

    const-string v29, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    const-string v27, "attach_num"

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 412
    .local v19, "nAttachments":I
    if-lez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 413
    :cond_e
    const-string v27, "x_twitter"

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 414
    const-string v27, "x_facebook"

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 415
    const-string v27, "friends_only"

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    .line 416
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 418
    .local v7, "attachments":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    move/from16 v0, v19

    if-lt v12, v0, :cond_17

    .line 425
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v27

    if-lez v27, :cond_f

    .line 426
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v7, v1}, Lcom/vkontakte/android/NewPostActivity;->addAttachment(Ljava/util/Vector;I)V

    .line 429
    :cond_f
    const-string v27, "location"

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->startLocationChooser()V

    .line 434
    .end local v7    # "attachments":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v19    # "nAttachments":I
    .end local v20    # "prefs":Landroid/content/SharedPreferences;
    :cond_10
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    const-string v28, "export_twitter"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 435
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    const-string v28, "export_facebook"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "edit"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "edit"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/NewsEntry;

    .line 439
    .local v9, "edit":Lcom/vkontakte/android/NewsEntry;
    iget-object v0, v9, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 440
    .local v23, "text":Ljava/lang/String;
    const-string v27, "<a href=\'vkontakte://profile/([0-9]+)\'>([^<]+)</a>"

    const-string v28, "[id$1|$2]"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 441
    const-string v27, "<a href=\'vkontakte://profile/-([0-9]+)\'>([^<]+)</a>"

    const-string v28, "[club$1|$2]"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 442
    const-string v27, "<a href=\'vklink://view/[^\']+\'>([^<]+)</a>"

    const-string v28, "$1"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 443
    const-string v27, "<a href=\'vkontakte://search/[^\']+\'>([^<]+)</a>"

    const-string v28, "$1"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 444
    const v27, 0x7f06012f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget v0, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 452
    const/16 v22, 0x0

    .line 453
    .local v22, "showAttachView":Z
    const/4 v12, 0x0

    .line 454
    .restart local v12    # "i":I
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 455
    .local v8, "atts":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v0, v9, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_19

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 551
    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 552
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v28, Lcom/vkontakte/android/NewPostActivity$21;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$21;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 554
    const-wide/16 v29, 0x3e8

    .line 552
    invoke-virtual/range {v27 .. v30}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 558
    .end local v8    # "atts":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9    # "edit":Lcom/vkontakte/android/NewsEntry;
    .end local v12    # "i":I
    .end local v22    # "showAttachView":Z
    .end local v23    # "text":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 559
    return-void

    .line 124
    .end local v4    # "_hasCam":Z
    .end local v11    # "hasCam":Z
    .end local v13    # "items":[Ljava/lang/String;
    .end local v14    # "items2":[Ljava/lang/String;
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_13
    const v27, 0x7f090004

    goto/16 :goto_0

    .line 252
    .restart local v13    # "items":[Ljava/lang/String;
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0005

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 253
    .restart local v14    # "items2":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "_hasCam":Z
    goto/16 :goto_1

    .restart local v11    # "hasCam":Z
    .restart local v15    # "link":Ljava/lang/String;
    .restart local v21    # "ptn":Ljava/util/regex/Pattern;
    .restart local v24    # "txt":Ljava/lang/String;
    :cond_15
    move-object/from16 v27, v15

    .line 321
    goto/16 :goto_2

    .line 327
    :cond_16
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "link_title"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "link_title"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    goto/16 :goto_3

    .line 332
    .end local v15    # "link":Ljava/lang/String;
    .end local v21    # "ptn":Ljava/util/regex/Pattern;
    .end local v24    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v26

    .local v26, "x":Ljava/lang/Exception;
    const-string v27, "vk"

    const-string v28, "WTF you just did?!"

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 419
    .end local v26    # "x":Ljava/lang/Exception;
    .restart local v7    # "attachments":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v12    # "i":I
    .restart local v19    # "nAttachments":I
    .restart local v20    # "prefs":Landroid/content/SharedPreferences;
    :cond_17
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "attach"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_file"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, "filename":Ljava/lang/String;
    if-eqz v10, :cond_18

    .line 421
    invoke-virtual {v7, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_18
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 455
    .end local v7    # "attachments":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v10    # "filename":Ljava/lang/String;
    .end local v19    # "nAttachments":I
    .end local v20    # "prefs":Landroid/content/SharedPreferences;
    .restart local v8    # "atts":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v9    # "edit":Lcom/vkontakte/android/NewsEntry;
    .restart local v22    # "showAttachView":Z
    .restart local v23    # "text":Ljava/lang/String;
    :cond_19
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 456
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_1a

    move-object v5, v6

    .line 457
    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    .line 458
    .local v5, "a":Lcom/vkontakte/android/PhotoAttachment;
    iget v0, v5, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move/from16 v27, v0

    if-lez v27, :cond_24

    const-string v25, "photo"

    .line 459
    .local v25, "type":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$13;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v5}, Lcom/vkontakte/android/NewPostActivity$13;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment;)V

    .line 462
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 459
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "A"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/16 v22, 0x1

    .line 467
    .end local v5    # "a":Lcom/vkontakte/android/PhotoAttachment;
    .end local v25    # "type":Ljava/lang/String;
    :cond_1a
    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    move-object v5, v6

    .line 468
    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    .line 469
    .local v5, "a":Lcom/vkontakte/android/VideoAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$14;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$14;-><init>(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/VideoAttachment;)V

    .line 472
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 469
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Avideo"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/vkontakte/android/VideoAttachment;->oid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/VideoAttachment;->vid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/16 v22, 0x1

    .line 477
    .end local v5    # "a":Lcom/vkontakte/android/VideoAttachment;
    :cond_1b
    instance-of v0, v6, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    move-object v5, v6

    .line 478
    check-cast v5, Lcom/vkontakte/android/AudioAttachment;

    .line 479
    .local v5, "a":Lcom/vkontakte/android/AudioAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$15;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$15;-><init>(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/AudioAttachment;)V

    .line 482
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 479
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Aaudio"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/vkontakte/android/AudioAttachment;->oid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/AudioAttachment;->aid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/16 v22, 0x1

    .line 487
    .end local v5    # "a":Lcom/vkontakte/android/AudioAttachment;
    :cond_1c
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_1d

    move-object v5, v6

    .line 488
    check-cast v5, Lcom/vkontakte/android/DocumentAttachment;

    .line 489
    .local v5, "a":Lcom/vkontakte/android/DocumentAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$16;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$16;-><init>(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/DocumentAttachment;)V

    .line 493
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 489
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Adoc"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/DocumentAttachment;->did:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const/16 v22, 0x1

    .line 498
    .end local v5    # "a":Lcom/vkontakte/android/DocumentAttachment;
    :cond_1d
    instance-of v0, v6, Lcom/vkontakte/android/LinkAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_1f

    move-object v5, v6

    .line 499
    check-cast v5, Lcom/vkontakte/android/LinkAttachment;

    .line 500
    .local v5, "a":Lcom/vkontakte/android/LinkAttachment;
    iget-object v15, v5, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    .line 501
    .restart local v15    # "link":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v29, 0x1e

    move/from16 v0, v27

    move/from16 v1, v29

    if-le v0, v1, :cond_1e

    const/16 v27, 0x0

    const/16 v29, 0x1e

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .end local v15    # "link":Ljava/lang/String;
    :cond_1e
    const-string v27, "http://"

    const-string v29, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    const-string v29, "https://"

    const-string v30, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 502
    .restart local v16    # "linkPreview":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$17;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$17;-><init>(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/LinkAttachment;)V

    .line 507
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 502
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "A"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/16 v22, 0x1

    .line 512
    .end local v5    # "a":Lcom/vkontakte/android/LinkAttachment;
    .end local v16    # "linkPreview":Ljava/lang/String;
    :cond_1f
    instance-of v0, v6, Lcom/vkontakte/android/PollAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_20

    move-object v5, v6

    .line 513
    check-cast v5, Lcom/vkontakte/android/PollAttachment;

    .line 514
    .local v5, "a":Lcom/vkontakte/android/PollAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$18;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$18;-><init>(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/PollAttachment;)V

    .line 517
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 514
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Apoll"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/vkontakte/android/PollAttachment;->oid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/PollAttachment;->pid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const/16 v22, 0x1

    .line 521
    .end local v5    # "a":Lcom/vkontakte/android/PollAttachment;
    :cond_20
    instance-of v0, v6, Lcom/vkontakte/android/WikiAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_21

    move-object v5, v6

    .line 522
    check-cast v5, Lcom/vkontakte/android/WikiAttachment;

    .line 523
    .local v5, "a":Lcom/vkontakte/android/WikiAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$19;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$19;-><init>(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/WikiAttachment;)V

    .line 526
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 523
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Apage"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/vkontakte/android/WikiAttachment;->oid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/WikiAttachment;->pid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const/16 v22, 0x1

    .line 530
    .end local v5    # "a":Lcom/vkontakte/android/WikiAttachment;
    :cond_21
    instance-of v0, v6, Lcom/vkontakte/android/NoteAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_22

    move-object v5, v6

    .line 531
    check-cast v5, Lcom/vkontakte/android/NoteAttachment;

    .line 532
    .local v5, "a":Lcom/vkontakte/android/NoteAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v27, v0

    new-instance v29, Lcom/vkontakte/android/NewPostActivity$20;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$20;-><init>(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/NoteAttachment;)V

    .line 535
    mul-int/lit8 v30, v12, 0xa

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 532
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v27, v0

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Anote"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/vkontakte/android/NoteAttachment;->oid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/vkontakte/android/NoteAttachment;->nid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const/16 v22, 0x1

    .line 539
    .end local v5    # "a":Lcom/vkontakte/android/NoteAttachment;
    :cond_22
    instance-of v0, v6, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v27, v0

    if-eqz v27, :cond_23

    .line 540
    check-cast v6, Lcom/vkontakte/android/GeoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 541
    const v27, 0x7f060139

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const v29, 0x7f0200a5

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 546
    const/16 v22, 0x0

    .line 548
    :cond_23
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 458
    .local v5, "a":Lcom/vkontakte/android/PhotoAttachment;
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_24
    const-string v25, "graffiti"

    goto/16 :goto_7
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 828
    iget v3, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v5, :cond_1

    :cond_0
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "edit"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 829
    const-string v3, "post_draft"

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 830
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-boolean v3, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    if-eqz v3, :cond_4

    .line 832
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 833
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 834
    const-string v6, "text"

    const v3, 0x7f06012f

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 835
    const-string v5, "x_twitter"

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 836
    const-string v5, "x_facebook"

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 837
    const-string v5, "friends_only"

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 838
    const-string v6, "location"

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 839
    const-string v4, "attach_num"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 840
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 843
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_2
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 850
    return-void

    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    move v3, v4

    .line 838
    goto :goto_0

    .line 841
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "i":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attach"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v4, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 845
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method public onKeyboardStateChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1053
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/LocationAttachView;->show:Z

    .line 1055
    :cond_0
    return-void

    .line 1054
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 863
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 864
    return-void
.end method

.method public onShowAddAttach()V
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1043
    return-void
.end method

.method public onUpdateBitmaps()V
    .locals 10

    .prologue
    const v9, 0x7f0201ed

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1098
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1099
    .local v1, "na":I
    const v3, 0x7f060130

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 1137
    return-void

    .end local v0    # "i":I
    :cond_0
    move v3, v5

    .line 1099
    goto :goto_0

    .line 1102
    .restart local v0    # "i":I
    :cond_1
    rsub-int/lit8 v7, v0, 0x2

    if-ge v0, v1, :cond_a

    move v6, v4

    :goto_2
    if-ge v0, v1, :cond_b

    move v3, v4

    :goto_3
    invoke-direct {p0, v7, v6, v3}, Lcom/vkontakte/android/NewPostActivity;->showAttachThumb(IZZ)V

    .line 1103
    if-ge v0, v1, :cond_9

    .line 1104
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "A"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1105
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "u":Ljava/lang/String;
    const-string v3, "Aaudio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1107
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020144

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1108
    rsub-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, v8, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1110
    :cond_2
    const-string v3, "Avideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1111
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020148

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1112
    rsub-int/lit8 v3, v0, 0x2

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/MultiAttachView;->getThumbnailAt(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1114
    :cond_3
    const-string v3, "Adoc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1115
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020145

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1116
    rsub-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, v8, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1118
    :cond_4
    const-string v3, "Ahttp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "Apage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1119
    :cond_5
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020146

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1120
    rsub-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, v8, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1122
    :cond_6
    const-string v3, "Aphoto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Agraffiti"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1123
    :cond_7
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1124
    rsub-int/lit8 v3, v0, 0x2

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/MultiAttachView;->getThumbnailAt(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1126
    :cond_8
    const-string v3, "Apoll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1127
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020147

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1128
    rsub-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, v8, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1100
    .end local v2    # "u":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a
    move v6, v5

    .line 1102
    goto/16 :goto_2

    :cond_b
    move v3, v5

    goto/16 :goto_3

    .line 1132
    :cond_c
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 1133
    rsub-int/lit8 v3, v0, 0x2

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/MultiAttachView;->getThumbnailAt(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    goto :goto_4
.end method

.method public post()V
    .locals 17

    .prologue
    .line 867
    const/4 v7, 0x0

    .line 868
    .local v7, "needUpload":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    if-lt v5, v12, :cond_7

    .line 871
    if-nez v7, :cond_e

    .line 872
    const/4 v3, 0x0

    .line 873
    .local v3, "exportParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v12, :cond_9

    const-string v3, "twitter,facebook"

    .line 876
    :cond_0
    :goto_1
    const v12, 0x7f06012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 877
    .local v9, "ptext":Ljava/lang/String;
    new-instance v10, Lcom/vkontakte/android/APIRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "edit"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "wall.edit"

    :goto_2
    invoke-direct {v10, v12}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 878
    .local v10, "req":Lcom/vkontakte/android/APIRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "edit"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "edit"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    .line 880
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    const-string v12, "post_id"

    iget v13, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v10, v12, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 883
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    const-string v1, ""

    .line 885
    .local v1, "att":Ljava/lang/String;
    const-string v12, "device"

    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 887
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v12, :cond_2

    .line 888
    const-string v12, "from_group"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 890
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v12, :cond_3

    .line 891
    const-string v12, "signed"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 893
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v12, :cond_4

    .line 894
    const-string v12, "lat"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v14, v14, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    const-string v13, "long"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v15, v15, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 896
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    if-lez v12, :cond_5

    .line 897
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    if-lt v5, v12, :cond_c

    .line 900
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 903
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    const-string v12, "attachments"

    invoke-virtual {v10, v12, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 905
    :cond_6
    const-string v12, "message"

    invoke-virtual {v10, v12, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 906
    const-string v13, "owner_id"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-virtual {v12, v13, v14}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v13

    .line 907
    const-string v14, "friends_only"

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v12, :cond_d

    const-string v12, "1"

    :goto_4
    invoke-virtual {v13, v14, v12}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 908
    const-string v13, "services"

    invoke-virtual {v12, v13, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 909
    new-instance v13, Lcom/vkontakte/android/NewPostActivity$32;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lcom/vkontakte/android/NewPostActivity$32;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 979
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 980
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1038
    .end local v1    # "att":Ljava/lang/String;
    .end local v9    # "ptext":Ljava/lang/String;
    .end local v10    # "req":Lcom/vkontakte/android/APIRequest;
    :goto_5
    return-void

    .line 869
    .end local v3    # "exportParam":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "A"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v7, 0x1

    .line 868
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 874
    .restart local v3    # "exportParam":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v12, :cond_a

    const-string v3, "twitter"

    goto/16 :goto_1

    .line 875
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v12, :cond_0

    const-string v3, "facebook"

    goto/16 :goto_1

    .line 877
    .restart local v9    # "ptext":Ljava/lang/String;
    :cond_b
    const-string v12, "wall.post"

    goto/16 :goto_2

    .line 898
    .restart local v1    # "att":Ljava/lang/String;
    .restart local v10    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v13, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\|"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 897
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 907
    :cond_d
    const/4 v12, 0x0

    goto :goto_4

    .line 982
    .end local v1    # "att":Ljava/lang/String;
    .end local v3    # "exportParam":Ljava/lang/String;
    .end local v9    # "ptext":Ljava/lang/String;
    .end local v10    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_e
    new-instance v6, Landroid/content/Intent;

    const-class v12, Lcom/vkontakte/android/UploaderService;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 984
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    new-array v4, v12, [Ljava/lang/String;

    .line 985
    .local v4, "files":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    new-array v11, v12, [I

    .line 986
    .local v11, "types":[I
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    if-lt v5, v12, :cond_16

    .line 990
    const-string v12, "multiattach"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 991
    const-string v12, "files"

    invoke-virtual {v6, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v12, "types"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 993
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 995
    .local v8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 996
    .restart local v3    # "exportParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v12, :cond_17

    const-string v3, "twitter,facebook"

    .line 999
    :cond_f
    :goto_7
    if-eqz v3, :cond_10

    const-string v12, "services"

    invoke-virtual {v8, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v12, :cond_11

    const-string v12, "friends_only"

    const-string v13, "1"

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v12, :cond_12

    .line 1004
    const-string v12, "lat"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v14, v14, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v12, "long"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v14, v14, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "edit"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "edit"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    .line 1011
    .restart local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v12, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1012
    const/4 v5, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v12

    if-lt v5, v12, :cond_19

    .line 1015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v12, :cond_13

    .line 1016
    iget-object v12, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_13
    const-string v12, "_edit"

    const-string v13, "1"

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v12, "post_id"

    new-instance v13, Ljava/lang/StringBuilder;

    iget v14, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v12, "info"

    invoke-virtual {v6, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1024
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_14
    const-string v12, "owner_id"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string v13, "message"

    const v12, 0x7f06012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v12, :cond_15

    .line 1027
    const-string v12, "from_group"

    const-string v13, "1"

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v12, "_group_title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "group_title"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string v12, "_group_photo"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "group_photo"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v12, :cond_15

    const-string v12, "signed"

    const-string v13, "1"

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_15
    const-string v12, "req_params"

    invoke-virtual {v6, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1033
    const-string v12, "attachments"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1034
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/NewPostActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1035
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    goto/16 :goto_5

    .line 987
    .end local v3    # "exportParam":Ljava/lang/String;
    .end local v8    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v12, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    .line 988
    const/4 v12, 0x0

    aput v12, v11, v5

    .line 986
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 997
    .restart local v3    # "exportParam":Ljava/lang/String;
    .restart local v8    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v12, :cond_18

    const-string v3, "twitter"

    goto/16 :goto_7

    .line 998
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v12, :cond_f

    const-string v3, "facebook"

    goto/16 :goto_7

    .line 1013
    .restart local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_19
    iget-object v13, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v14, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\|"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8
.end method

.method public removePhoto()V
    .locals 2

    .prologue
    .line 657
    const v0, 0x7f06012f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 661
    :cond_0
    return-void
.end method

.method public setupMentionDlg()V
    .locals 4

    .prologue
    .line 816
    sget-object v2, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 817
    .local v0, "friends":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/vkontakte/android/NewPostActivity$30;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewPostActivity$30;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 824
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    .line 825
    return-void

    .line 817
    :cond_0
    sget-object v2, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public showOptions()V
    .locals 9

    .prologue
    const v8, 0x7f0900a4

    const v7, 0x7f09001d

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 708
    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-lez v1, :cond_0

    .line 709
    const/4 v1, 0x4

    new-array v0, v1, [Z

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    aput-boolean v1, v0, v5

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    aput-boolean v1, v0, v6

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    aput-boolean v1, v0, v2

    .line 710
    .local v0, "opts":[Z
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    const v2, 0x7f0a0013

    new-instance v3, Lcom/vkontakte/android/NewPostActivity$26;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/NewPostActivity$26;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 717
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$27;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/NewPostActivity$27;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 732
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 733
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 754
    :goto_0
    return-void

    .line 735
    .end local v0    # "opts":[Z
    :cond_0
    new-array v0, v2, [Z

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    aput-boolean v1, v0, v5

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    aput-boolean v1, v0, v6

    .line 736
    .restart local v0    # "opts":[Z
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 737
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090173

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 738
    new-instance v3, Lcom/vkontakte/android/NewPostActivity$28;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/NewPostActivity$28;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    .line 737
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 744
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$29;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/NewPostActivity$29;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 751
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 665
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    const-string v3, "tmp"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    .line 668
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->camIntent:Landroid/content/Intent;

    .line 669
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->camIntent:Landroid/content/Intent;

    const-string v3, "output"

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 671
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->camIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v1

    .line 673
    .local v1, "x":Ljava/lang/Exception;
    const v2, 0x7f090053

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startGallery()V
    .locals 3

    .prologue
    .line 678
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 679
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 680
    return-void
.end method

.method public startLocationChooser()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 683
    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v5, :cond_2

    .line 684
    :cond_0
    const v1, 0x7f060139

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f0200a5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    .line 686
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 687
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 688
    const-string v1, "network"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 689
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V

    .line 690
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 691
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 692
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 699
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    :goto_0
    return-void

    .line 693
    .restart local v0    # "locationManager":Landroid/location/LocationManager;
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 694
    .local v6, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v6, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 696
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v6    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 697
    .local v7, "intent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v7, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public stopGettingLocation()V
    .locals 2

    .prologue
    .line 702
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    .line 703
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 704
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 705
    return-void
.end method
