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

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 59
    iput v2, p0, Lcom/vkontakte/android/NewPostActivity;->CAMERA_RESULT:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->GALLERY_RESULT:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->LOCATION_RESULT:I

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->AUDIO_RESULT:I

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->VIDEO_RESULT:I

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->DOCUMENT_RESULT:I

    .line 72
    iput v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 74
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    .line 81
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->publishing:Z

    .line 82
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 85
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->needPostAfterLocation:Z

    .line 88
    iput-boolean v2, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    .line 90
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showMentionDialog()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Vector;I)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/NewPostActivity;->addAttachment(Ljava/util/Vector;I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/LocationAttachView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showExtendedAttachMenu()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startAudioSelector()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startVideoSelector()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 480
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
    .line 513
    .local p1, "atts":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-boolean v1, v1, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v2, Lcom/vkontakte/android/NewPostActivity$16;

    invoke-direct {v2, p0, p1, p2}, Lcom/vkontakte/android/NewPostActivity$16;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Vector;I)V

    .line 516
    const-wide/16 v3, 0x64

    .line 514
    invoke-virtual {v1, v2, v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    .local v0, "a":Ljava/lang/String;
    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 524
    :goto_1
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v1}, Lcom/vkontakte/android/NewPostActivity;->addAttachment(Ljava/util/Vector;I)V

    goto :goto_0

    .line 522
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setThumbBitmap(ILandroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "border"    # Z

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "v":Landroid/widget/ImageView;
    packed-switch p1, :pswitch_data_0

    .line 915
    :goto_0
    if-nez v0, :cond_3

    .line 917
    :goto_1
    return-void

    .line 906
    :pswitch_0
    if-eqz p3, :cond_0

    const v1, 0x7f060142

    :goto_2
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "v":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 907
    .restart local v0    # "v":Landroid/widget/ImageView;
    goto :goto_0

    .line 906
    :cond_0
    const v1, 0x7f060141

    goto :goto_2

    .line 909
    :pswitch_1
    if-eqz p3, :cond_1

    const v1, 0x7f060144

    :goto_3
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "v":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 910
    .restart local v0    # "v":Landroid/widget/ImageView;
    goto :goto_0

    .line 909
    :cond_1
    const v1, 0x7f060143

    goto :goto_3

    .line 912
    :pswitch_2
    if-eqz p3, :cond_2

    const v1, 0x7f060146

    :goto_4
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "v":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "v":Landroid/widget/ImageView;
    goto :goto_0

    :cond_2
    const v1, 0x7f060145

    goto :goto_4

    .line 916
    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 904
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

    .line 882
    const/4 v0, 0x0

    .local v0, "v1":Landroid/view/View;
    const/4 v1, 0x0

    .line 883
    .local v1, "v2":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 897
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 900
    :cond_0
    :goto_1
    return-void

    .line 885
    :pswitch_0
    const v2, 0x7f060141

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 886
    const v2, 0x7f060142

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 887
    goto :goto_0

    .line 889
    :pswitch_1
    const v2, 0x7f060143

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 890
    const v2, 0x7f060144

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 891
    goto :goto_0

    .line 893
    :pswitch_2
    const v2, 0x7f060145

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 894
    const v2, 0x7f060146

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 898
    :cond_1
    if-eqz p2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    if-eqz p3, :cond_3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v2, v4

    .line 898
    goto :goto_2

    :cond_3
    move v3, v4

    .line 899
    goto :goto_3

    .line 883
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
    .line 437
    const v0, 0x7f0a0023

    .line 438
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

    .line 439
    :cond_0
    const v0, 0x7f0a0022

    .line 440
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$13;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 463
    const v2, 0x7f090134

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 465
    return-void
.end method

.method private showMentionDialog()V
    .locals 4

    .prologue
    .line 487
    sget-object v0, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 488
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->setupMentionDlg()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 510
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/cache/FriendsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 494
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewPostActivity$14;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 502
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 504
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewPostActivity$15;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 507
    const-wide/16 v2, 0x64

    .line 504
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startAudioSelector()V
    .locals 3

    .prologue
    .line 468
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v1, "oid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    return-void
.end method

.method private startDocumentSelector()V
    .locals 3

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/DocumentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 484
    return-void
.end method

.method private startVideoSelector()V
    .locals 3

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 478
    return-void
.end method


# virtual methods
.method public extractPhoto()V
    .locals 4

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 680
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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 683
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 684
    return-void
.end method

.method public friendListLoaded()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->progrDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Lcom/vkontakte/android/NewPostActivity$22;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewPostActivity$22;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 731
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 632
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 637
    const-string v3, "point"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/GeoAttachment;

    iput-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 638
    const v3, 0x7f060148

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200a6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 639
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 640
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 641
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V

    goto :goto_0

    .line 645
    :cond_2
    if-ne p1, v8, :cond_3

    .line 646
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->extractPhoto()V

    .line 647
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 649
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 650
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    .line 651
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->extractPhoto()V

    .line 652
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 654
    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 655
    const-string v3, "audio"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 656
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

    .line 657
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 658
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

    .line 659
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 661
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    .line 662
    const-string v3, "video"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/VideoFile;

    .line 663
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

    .line 664
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 665
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

    .line 666
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 668
    .end local v2    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_6
    const/4 v3, 0x6

    if-ne p1, v3, :cond_0

    .line 669
    const-string v3, "document"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Document;

    .line 670
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

    .line 671
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 672
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

    .line 673
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onAllAttachmentsRemoved()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 872
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v0, 0x7f060133

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

    .line 873
    return-void

    .line 872
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachmentRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "uid"

    sget v22, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 104
    const v20, 0x7f03003f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setContentView(I)V

    .line 106
    sget-boolean v20, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v20, :cond_0

    .line 107
    const v20, 0x7f060195

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f020229

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    const v20, 0x7f060195

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, 0x0

    const/high16 v23, 0x40e00000    # 7.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/high16 v21, 0x43480000    # 200.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 111
    const v20, 0x7f060133

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x20

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 118
    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 120
    new-instance v20, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090004

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->addViewAtRight(Landroid/view/View;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/TitleBarButton;->setActiveBG()V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    const v21, 0x33d6bf95    # 1.0E-7f

    const/16 v22, 0x0

    const/high16 v23, -0x40800000    # -1.0f

    const v24, -0xb6783f

    invoke-virtual/range {v20 .. v24}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    .restart local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v20, 0x40400000    # 3.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 126
    const/high16 v20, 0x42b60000    # 91.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 130
    new-instance v6, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f09001c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 131
    .local v6, "cancelBtn":Lcom/vkontakte/android/TitleBarButton;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/NewPostActivity;->addViewAtLeft(Landroid/view/View;)V

    .line 132
    invoke-virtual {v6}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    .restart local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v20, 0x40400000    # 3.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 134
    const/high16 v20, 0x42a00000    # 80.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 135
    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 136
    invoke-static {v6}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 138
    const v20, 0x7f060133

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$1;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 142
    const-wide/16 v22, 0x64

    .line 138
    invoke-virtual/range {v20 .. v23}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$2;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v20, Lcom/vkontakte/android/NewPostActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$3;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v20, 0x7f06013f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$4;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v20, 0x7f060148

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$5;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v20, 0x7f060147

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$6;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090021

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    sget-object v20, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-nez v20, :cond_1

    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    sput-object v20, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 214
    :cond_1
    sget-object v20, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    if-lez v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->setupMentionDlg()V

    .line 228
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0003

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "items":[Ljava/lang/String;
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f09001f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$7;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    sget-object v20, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "android.hardware.camera"

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Global;->hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 245
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0004

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 246
    .local v11, "items2":[Ljava/lang/String;
    const/4 v4, 0x1

    .line 251
    .local v4, "_hasCam":Z
    :goto_0
    move v8, v4

    .line 253
    .local v8, "hasCam":Z
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->photoDlg2:Landroid/app/AlertDialog$Builder;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg2:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090020

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->photoDlg2:Landroid/app/AlertDialog$Builder;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/vkontakte/android/NewPostActivity$8;-><init>(Lcom/vkontakte/android/NewPostActivity;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "qp"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->startCamera()V

    .line 281
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "qp"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->startGallery()V

    .line 285
    :cond_5
    const v20, 0x7f060133

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$9;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    const v20, 0x7f060149

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setOnAttachActionListener(Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "text"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "text"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "text"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 315
    .local v19, "txt":Ljava/lang/String;
    const/4 v12, 0x0

    .line 316
    .local v12, "link":Ljava/lang/String;
    const-string v20, "((?:(?:http|https)://)[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 317
    .local v18, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual/range {v18 .. v19}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 318
    .local v15, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 319
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 320
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 323
    :cond_6
    if-eqz v12, :cond_7

    .line 324
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1e

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    const/16 v20, 0x0

    const/16 v21, 0x1e

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :goto_1
    const-string v21, "http://"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "https://"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 325
    .local v13, "linkPreview":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090019

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 328
    .end local v13    # "linkPreview":Ljava/lang/String;
    :cond_7
    const v20, 0x7f060133

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 333
    .end local v12    # "link":Ljava/lang/String;
    .end local v15    # "m":Ljava/util/regex/Matcher;
    .end local v18    # "ptn":Ljava/util/regex/Pattern;
    .end local v19    # "txt":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "photoURI"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "photoURI"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    .line 338
    const v20, 0x7f06013d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090006

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " (1)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 343
    :cond_9
    const v20, 0x7f060132

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/XLinearLayout;->setOnKeyboardStateListener(Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;)V

    .line 345
    const v20, 0x7f060140

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$10;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v20, 0x7f06014a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/ui/LocationAttachView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    .line 358
    const v20, 0x7f06000e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/NewPostActivity$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$11;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    new-instance v20, Lcom/vkontakte/android/NewPostActivity$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$12;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v20, v0

    sget v21, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    :cond_a
    const-string v20, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 406
    const-string v20, "post_draft"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 407
    .local v17, "prefs":Landroid/content/SharedPreferences;
    const-string v20, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 408
    const v20, 0x7f060133

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    const-string v21, "text"

    const-string v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const-string v20, "attach_num"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 410
    .local v16, "nAttachments":I
    if-lez v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 411
    :cond_b
    const-string v20, "x_twitter"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 412
    const-string v20, "x_facebook"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 413
    const-string v20, "friends_only"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    .line 414
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 416
    .local v5, "attachments":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move/from16 v0, v16

    if-lt v9, v0, :cond_10

    .line 423
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v20

    if-lez v20, :cond_c

    .line 424
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/vkontakte/android/NewPostActivity;->addAttachment(Ljava/util/Vector;I)V

    .line 427
    :cond_c
    const-string v20, "location"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->startLocationChooser()V

    .line 432
    .end local v5    # "attachments":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v16    # "nAttachments":I
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    :cond_d
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "export_twitter"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 433
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "export_facebook"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 434
    return-void

    .line 248
    .end local v4    # "_hasCam":Z
    .end local v8    # "hasCam":Z
    .end local v11    # "items2":[Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 249
    .restart local v11    # "items2":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "_hasCam":Z
    goto/16 :goto_0

    .restart local v8    # "hasCam":Z
    .restart local v12    # "link":Ljava/lang/String;
    .restart local v15    # "m":Ljava/util/regex/Matcher;
    .restart local v18    # "ptn":Ljava/util/regex/Pattern;
    .restart local v19    # "txt":Ljava/lang/String;
    :cond_f
    move-object/from16 v20, v12

    .line 324
    goto/16 :goto_1

    .line 417
    .end local v12    # "link":Ljava/lang/String;
    .end local v15    # "m":Ljava/util/regex/Matcher;
    .end local v18    # "ptn":Ljava/util/regex/Pattern;
    .end local v19    # "txt":Ljava/lang/String;
    .restart local v5    # "attachments":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v16    # "nAttachments":I
    .restart local v17    # "prefs":Landroid/content/SharedPreferences;
    :cond_10
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "attach"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_file"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, "filename":Ljava/lang/String;
    if-eqz v7, :cond_11

    .line 419
    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 699
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

    .line 700
    const-string v3, "post_draft"

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 701
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-boolean v3, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    if-eqz v3, :cond_4

    .line 703
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 704
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 705
    const-string v6, "text"

    const v3, 0x7f060133

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 706
    const-string v5, "x_twitter"

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 707
    const-string v5, "x_facebook"

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 708
    const-string v5, "friends_only"

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 709
    const-string v6, "location"

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 710
    const-string v4, "attach_num"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 711
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 714
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_2
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 721
    return-void

    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    move v3, v4

    .line 709
    goto :goto_0

    .line 712
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

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 716
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
    .line 877
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_0

    .line 878
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/LocationAttachView;->show:Z

    .line 879
    :cond_0
    return-void

    .line 878
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 734
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 735
    return-void
.end method

.method public onShowAddAttach()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->photoDlg:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 867
    return-void
.end method

.method public onUpdateBitmaps()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 922
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 923
    .local v1, "na":I
    const v3, 0x7f06013f

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 952
    return-void

    .end local v0    # "i":I
    :cond_0
    move v3, v5

    .line 923
    goto :goto_0

    .line 925
    .restart local v0    # "i":I
    :cond_1
    rsub-int/lit8 v7, v0, 0x2

    if-ge v0, v1, :cond_6

    move v6, v4

    :goto_2
    if-ge v0, v1, :cond_7

    move v3, v4

    :goto_3
    invoke-direct {p0, v7, v6, v3}, Lcom/vkontakte/android/NewPostActivity;->showAttachThumb(IZZ)V

    .line 926
    if-ge v0, v1, :cond_5

    .line 927
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

    if-eqz v3, :cond_8

    .line 928
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "u":Ljava/lang/String;
    const-string v3, "Aaudio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 930
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02012b

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 931
    rsub-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, v8, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 933
    :cond_2
    const-string v3, "Avideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 934
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02012e

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 935
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

    .line 937
    :cond_3
    const-string v3, "Adoc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 938
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02012c

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 939
    rsub-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, v8, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 941
    :cond_4
    const-string v3, "Ahttp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 942
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02012d

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 943
    rsub-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, v8, v5}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 924
    .end local v2    # "u":Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    move v6, v5

    .line 925
    goto/16 :goto_2

    :cond_7
    move v3, v5

    goto/16 :goto_3

    .line 947
    :cond_8
    rsub-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201cc

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v3, v6, v4}, Lcom/vkontakte/android/NewPostActivity;->setThumbBitmap(ILandroid/graphics/Bitmap;Z)V

    .line 948
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
    .locals 15

    .prologue
    .line 738
    const/4 v5, 0x0

    .line 739
    .local v5, "needUpload":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v10

    if-lt v3, v10, :cond_6

    .line 742
    if-nez v5, :cond_c

    .line 743
    const/4 v1, 0x0

    .line 744
    .local v1, "exportParam":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v10, :cond_8

    const-string v1, "twitter,facebook"

    .line 747
    :cond_0
    :goto_1
    const v10, 0x7f060133

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 748
    .local v7, "ptext":Ljava/lang/String;
    new-instance v8, Lcom/vkontakte/android/APIRequest;

    const-string v10, "wall.post"

    invoke-direct {v8, v10}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 750
    .local v8, "req":Lcom/vkontakte/android/APIRequest;
    const-string v0, ""

    .line 752
    .local v0, "att":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v10, :cond_1

    .line 753
    const-string v10, "from_group"

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 755
    :cond_1
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v10, :cond_2

    .line 756
    const-string v10, "signed"

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 758
    :cond_2
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v10, :cond_3

    .line 759
    const-string v10, "lat"

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v12, v12, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    const-string v11, "long"

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v13, v13, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 761
    :cond_3
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v10

    if-lez v10, :cond_4

    .line 762
    const/4 v3, 0x0

    :goto_2
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v10

    if-lt v3, v10, :cond_a

    .line 765
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    const-string v10, "attachments"

    invoke-virtual {v8, v10, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 770
    :cond_5
    const-string v10, "message"

    invoke-virtual {v8, v10, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 771
    const-string v11, "owner_id"

    iget v12, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-virtual {v10, v11, v12}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v11

    .line 772
    const-string v12, "friends_only"

    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v10, :cond_b

    const-string v10, "1"

    :goto_3
    invoke-virtual {v11, v12, v10}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 773
    const-string v11, "services"

    invoke-virtual {v10, v11, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 774
    new-instance v11, Lcom/vkontakte/android/NewPostActivity$23;

    invoke-direct {v11, p0, v7}, Lcom/vkontakte/android/NewPostActivity$23;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 819
    invoke-virtual {v10, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 820
    invoke-virtual {v10, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 862
    .end local v0    # "att":Ljava/lang/String;
    .end local v7    # "ptext":Ljava/lang/String;
    .end local v8    # "req":Lcom/vkontakte/android/APIRequest;
    :goto_4
    return-void

    .line 740
    .end local v1    # "exportParam":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "A"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v5, 0x1

    .line 739
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 745
    .restart local v1    # "exportParam":Ljava/lang/String;
    :cond_8
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v10, :cond_9

    const-string v1, "twitter"

    goto/16 :goto_1

    .line 746
    :cond_9
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v10, :cond_0

    const-string v1, "facebook"

    goto/16 :goto_1

    .line 763
    .restart local v0    # "att":Ljava/lang/String;
    .restart local v7    # "ptext":Ljava/lang/String;
    .restart local v8    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v11, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 772
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 822
    .end local v0    # "att":Ljava/lang/String;
    .end local v1    # "exportParam":Ljava/lang/String;
    .end local v7    # "ptext":Ljava/lang/String;
    .end local v8    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_c
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v4, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 824
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v10

    new-array v2, v10, [Ljava/lang/String;

    .line 825
    .local v2, "files":[Ljava/lang/String;
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v10

    new-array v9, v10, [I

    .line 826
    .local v9, "types":[I
    const/4 v3, 0x0

    :goto_5
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v10

    if-lt v3, v10, :cond_12

    .line 830
    const-string v10, "multiattach"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    const-string v10, "files"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v10, "types"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 833
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 835
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 836
    .restart local v1    # "exportParam":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v10, :cond_13

    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v10, :cond_13

    const-string v1, "twitter,facebook"

    .line 839
    :cond_d
    :goto_6
    if-eqz v1, :cond_e

    const-string v10, "services"

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    :cond_e
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v10, :cond_f

    const-string v10, "friends_only"

    const-string v11, "1"

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_f
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v10, :cond_10

    .line 844
    const-string v10, "lat"

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v12, v12, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v10, "long"

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v12, v12, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_10
    const-string v10, "owner_id"

    new-instance v11, Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string v11, "message"

    const v10, 0x7f060133

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v10, :cond_11

    .line 851
    const-string v10, "from_group"

    const-string v11, "1"

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const-string v10, "_group_title"

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "group_title"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string v10, "_group_photo"

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "group_photo"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v10, :cond_11

    const-string v10, "signed"

    const-string v11, "1"

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_11
    const-string v10, "req_params"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 857
    const-string v10, "attachments"

    iget-object v11, p0, Lcom/vkontakte/android/NewPostActivity;->attachments:Ljava/util/HashMap;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewPostActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 859
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 860
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    goto/16 :goto_4

    .line 827
    .end local v1    # "exportParam":Ljava/lang/String;
    .end local v6    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v10, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    .line 828
    const/4 v10, 0x0

    aput v10, v9, v3

    .line 826
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 837
    .restart local v1    # "exportParam":Ljava/lang/String;
    .restart local v6    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v10, :cond_14

    const-string v1, "twitter"

    goto/16 :goto_6

    .line 838
    :cond_14
    iget-boolean v10, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v10, :cond_d

    const-string v1, "facebook"

    goto/16 :goto_6
.end method

.method public removePhoto()V
    .locals 3

    .prologue
    .line 529
    const v0, 0x7f060133

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

    .line 530
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 533
    :cond_0
    const v0, 0x7f06013d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method

.method public setupMentionDlg()V
    .locals 4

    .prologue
    .line 687
    sget-object v2, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 688
    .local v0, "friends":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->mentionDlg:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/vkontakte/android/NewPostActivity$21;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewPostActivity$21;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 695
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    .line 696
    return-void

    .line 688
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
    const v8, 0x7f0900a3

    const v7, 0x7f09001d

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 582
    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-lez v1, :cond_0

    .line 583
    const/4 v1, 0x4

    new-array v0, v1, [Z

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    aput-boolean v1, v0, v5

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    aput-boolean v1, v0, v6

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    aput-boolean v1, v0, v2

    .line 584
    .local v0, "opts":[Z
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 585
    const v2, 0x7f0a0013

    new-instance v3, Lcom/vkontakte/android/NewPostActivity$17;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/NewPostActivity$17;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 591
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/NewPostActivity$18;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 606
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 628
    :goto_0
    return-void

    .line 609
    .end local v0    # "opts":[Z
    :cond_0
    new-array v0, v2, [Z

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    aput-boolean v1, v0, v5

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    aput-boolean v1, v0, v6

    .line 610
    .restart local v0    # "opts":[Z
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090172

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 612
    new-instance v3, Lcom/vkontakte/android/NewPostActivity$19;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/NewPostActivity$19;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    .line 611
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 618
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/NewPostActivity$20;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 625
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 626
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 538
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    const-string v3, "tmp"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    .line 541
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->camIntent:Landroid/content/Intent;

    .line 542
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->camIntent:Landroid/content/Intent;

    const-string v3, "output"

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 544
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->camIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "x":Ljava/lang/Exception;
    const v2, 0x7f090052

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startGallery()V
    .locals 3

    .prologue
    .line 551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 552
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 551
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 554
    return-void
.end method

.method public startLocationChooser()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 557
    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v5, :cond_2

    .line 558
    :cond_0
    const v1, 0x7f060148

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f0200a6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    .line 560
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 561
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 562
    const-string v1, "network"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 563
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V

    .line 564
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttachView:Lcom/vkontakte/android/ui/LocationAttachView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 566
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 573
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    :goto_0
    return-void

    .line 567
    .restart local v0    # "locationManager":Landroid/location/LocationManager;
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 568
    .local v6, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v6, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 570
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v6    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v7, "intent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v7, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public stopGettingLocation()V
    .locals 2

    .prologue
    .line 576
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationLoading:Z

    .line 577
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 578
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 579
    return-void
.end method
