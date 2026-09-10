.class public Lcom/vkontakte/android/NewPostActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "NewPostActivity.java"


# static fields
.field public static final NOTIFY_ID:I = 0x1

.field public static final NOTIFY_ID_PROGR:I = 0x2


# instance fields
.field private final AUDIO_RESULT:I

.field private final DOCUMENT_RESULT:I

.field private final LOCATION_RESULT:I

.field private final MENTION_RESULT:I

.field private final PHOTO_RESULT:I

.field private final VIDEO_RESULT:I

.field private attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field camIntent:Landroid/content/Intent;

.field exportToFacebook:Z

.field exportToTwitter:Z

.field friendsOnly:Z

.field fromGroup:Z

.field private geoAttach:Lcom/vkontakte/android/GeoAttachment;

.field imageUri:Landroid/net/Uri;

.field mdSetup:Z

.field needPostAfterLocation:Z

.field notification:Landroid/app/Notification;

.field progrDlg:Landroid/app/ProgressDialog;

.field progrDlg2:Landroid/app/ProgressDialog;

.field progrDlg3:Landroid/app/ProgressDialog;

.field publishing:Z

.field private saveDraft:Z

.field private sendBtn:Landroid/view/View;

.field private sigAttach:Lcom/vkontakte/android/Attachment;

.field signedFromGroup:Z

.field uid:I

.field uploadView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 58
    iput v2, p0, Lcom/vkontakte/android/NewPostActivity;->PHOTO_RESULT:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->LOCATION_RESULT:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->AUDIO_RESULT:I

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->VIDEO_RESULT:I

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->DOCUMENT_RESULT:I

    .line 63
    const/4 v0, 0x7

    iput v0, p0, Lcom/vkontakte/android/NewPostActivity;->MENTION_RESULT:I

    .line 71
    iput v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    .line 79
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->publishing:Z

    .line 80
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->needPostAfterLocation:Z

    .line 85
    iput-boolean v2, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    .line 88
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->checkAttachLimit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startDocumentSelector()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->removeLocation()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showExtendedAttachMenu()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startAudioSelector()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startVideoSelector()V

    return-void
.end method

.method private attachLocation(Lcom/vkontakte/android/GeoAttachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    const v3, 0x7f080141

    .line 635
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 636
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "title = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 638
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 641
    return-void

    .line 639
    :cond_0
    iget-object v1, p1, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkAttachLimit()Z
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 376
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601df

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 380
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private removeLocation()V
    .locals 2

    .prologue
    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 645
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 648
    return-void
.end method

.method private showAttachView(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, -0x1

    .line 355
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setVisibility(I)V

    .line 356
    const v0, 0x7f08013f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    const/4 v0, -0x2

    :goto_1
    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-void

    .line 355
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    .line 356
    goto :goto_1
.end method

.method private showExtendedAttachMenu()V
    .locals 4

    .prologue
    .line 390
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    const v2, 0x7f0d0022

    new-instance v3, Lcom/vkontakte/android/NewPostActivity$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewPostActivity$10;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 409
    const v2, 0x7f0600ff

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 411
    .local v0, "dlg":Landroid/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 412
    return-void
.end method

.method private startAudioSelector()V
    .locals 4

    .prologue
    .line 415
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "AudioListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 420
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 421
    return-void
.end method

.method private startDocumentSelector()V
    .locals 4

    .prologue
    .line 433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "DocumentsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 438
    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 439
    return-void
.end method

.method private startVideoSelector()V
    .locals 4

    .prologue
    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "VideoListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 429
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 430
    return-void
.end method

.method private updateExportIcons()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 384
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 385
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 386
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    return-void

    :cond_0
    move v0, v2

    .line 384
    goto :goto_0

    :cond_1
    move v0, v2

    .line 385
    goto :goto_1

    :cond_2
    move v1, v2

    .line 386
    goto :goto_2
.end method

.method private updateSendButton()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f080021

    .line 676
    const v1, 0x7f08013f

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-nez v1, :cond_0

    move v0, v2

    .line 677
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 678
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_2

    .line 679
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 684
    :goto_2
    return-void

    .line 676
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 679
    .restart local v0    # "enable":Z
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_1

    .line 681
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v2, v1, v2

    if-eqz v0, :cond_3

    const/16 v1, 0xff

    :goto_3
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 682
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 681
    :cond_3
    const/16 v1, 0x80

    goto :goto_3

    .line 682
    :cond_4
    const v2, -0x7f000001

    goto :goto_4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 583
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_0

    .line 632
    :goto_0
    return-void

    .line 587
    :cond_0
    const/4 v10, 0x3

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 588
    const-string v10, "point"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->attachLocation(Lcom/vkontakte/android/GeoAttachment;)V

    goto :goto_0

    .line 592
    :cond_1
    const/4 v10, 0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_3

    .line 593
    const-string v10, "attachment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 594
    const-string v10, "attachment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    .line 595
    .local v2, "att":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v10, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 604
    .end local v2    # "att":Lcom/vkontakte/android/PhotoAttachment;
    :cond_2
    :goto_1
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 606
    :cond_3
    const/4 v10, 0x4

    move/from16 v0, p1

    if-ne v0, v10, :cond_4

    .line 607
    const-string v10, "audio"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 608
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v11, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v11, v1}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 609
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 611
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_4
    const/4 v10, 0x5

    move/from16 v0, p1

    if-ne v0, v10, :cond_5

    .line 612
    const-string v10, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/api/VideoFile;

    .line 613
    .local v9, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v11, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v11, v9}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 614
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 616
    .end local v9    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_5
    const/4 v10, 0x6

    move/from16 v0, p1

    if-ne v0, v10, :cond_6

    .line 617
    const-string v10, "document"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/Document;

    .line 618
    .local v3, "doc":Lcom/vkontakte/android/api/Document;
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v11, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v11, v3}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 619
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 621
    .end local v3    # "doc":Lcom/vkontakte/android/api/Document;
    :cond_6
    const/4 v10, 0x7

    move/from16 v0, p1

    if-ne v0, v10, :cond_7

    .line 622
    const-string v10, "user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 623
    .local v6, "p":Lcom/vkontakte/android/UserProfile;
    const v10, 0x7f08013f

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 624
    .local v8, "txt":Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    if-eq v10, v11, :cond_a

    .line 625
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v11

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "*id"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 631
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "txt":Landroid/widget/EditText;
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    goto/16 :goto_0

    .line 596
    :cond_8
    const-string v10, "files"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 597
    const-string v10, "files"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 598
    .local v5, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 599
    .local v4, "file":Ljava/lang/String;
    iget-object v11, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v12, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-direct {v12, v4}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_3

    .line 602
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_1

    .line 628
    .restart local v6    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v8    # "txt":Landroid/widget/EditText;
    :cond_a
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    if-nez v10, :cond_b

    const-string v10, ""

    :goto_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*id"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ") "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v12, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_2

    :cond_b
    const-string v10, " "

    goto :goto_4
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 687
    const v0, 0x7f08013f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 688
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 690
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0601e5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f06010e

    :goto_1
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$17;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$17;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 697
    const v1, 0x7f060027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 702
    :goto_2
    return-void

    .line 690
    :cond_1
    const v0, 0x7f0601d1

    goto :goto_0

    .line 691
    :cond_2
    const v0, 0x7f060062

    goto :goto_1

    .line 700
    :cond_3
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onBackPressed()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "edit"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const v14, 0x7f06017e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 95
    :cond_0
    sget-boolean v14, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v14, :cond_f

    .line 96
    const-wide/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/vkontakte/android/NewPostActivity;->requestWindowFeature(J)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setFlags(II)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 99
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v14, 0x43fa0000    # 500.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 100
    const v14, 0x43a28000    # 325.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 102
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 103
    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 104
    const/16 v14, 0x20

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 105
    const/16 v14, 0x31

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    const/high16 v14, 0x42200000    # 40.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    const/high16 v14, 0x7f030000

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "uid"

    sget v16, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 121
    const v14, 0x7f030069

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->setContentView(I)V

    .line 123
    const v14, 0x7f08013f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$1;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 127
    const-wide/16 v16, 0x64

    .line 123
    invoke-virtual/range {v14 .. v17}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$2;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v14, 0x7f080147

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$3;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v14, 0x7f080145

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$4;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v14, 0x7f080149

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$5;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v14, 0x7f080146

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$6;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v14, 0x7f080148

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$7;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v14, 0x7f080141

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const v14, 0x7f08013f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$8;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    const v14, 0x7f080140

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    const/4 v15, 0x0

    iput v15, v14, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    iput v15, v14, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v15, Lcom/vkontakte/android/NewPostActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/NewPostActivity$9;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setCallback(Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;)V

    .line 234
    const-string v14, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "text"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "link_title"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 236
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "text"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "txt":Ljava/lang/String;
    const/4 v4, 0x0

    .line 238
    .local v4, "link":Ljava/lang/String;
    const-string v14, "((?:(?:http|https)://)[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 239
    .local v9, "ptn":Ljava/util/regex/Pattern;
    if-eqz v12, :cond_2

    .line 240
    invoke-virtual {v9, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 241
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 242
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 244
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 247
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_2
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "LINK "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    if-eqz v4, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v15, Lcom/vkontakte/android/LinkAttachment;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v15, v4, v0}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 250
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 252
    :cond_3
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "link_title"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 253
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "link_title"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 257
    :cond_4
    :goto_1
    const v14, 0x7f08013f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    invoke-virtual {v14, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v4    # "link":Ljava/lang/String;
    .end local v9    # "ptn":Ljava/util/regex/Pattern;
    .end local v12    # "txt":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "photoURI"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v15, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "photoURI"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setEnabled(Z)V

    .line 266
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 269
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "photos"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "photos"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 271
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_11

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setEnabled(Z)V

    .line 274
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 304
    .end local v8    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    if-ne v14, v15, :cond_12

    .line 305
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "export_twitter"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 306
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "export_facebook"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    .line 313
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "public"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 314
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "edit"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "edit"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsEntry;

    .line 316
    .local v3, "edit":Lcom/vkontakte/android/NewsEntry;
    iget-object v11, v3, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 317
    .local v11, "text":Ljava/lang/String;
    const-string v14, "<a href=\'vkontakte://profile/([0-9]+)\'>([^<]+)</a>"

    const-string v15, "*id$1 ($2)"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 318
    const-string v14, "<a href=\'vkontakte://profile/-([0-9]+)\'>([^<]+)</a>"

    const-string v15, "*club$1 ($2)"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 319
    const-string v14, "<a href=\'vklink://view/[^\']+\'>([^<]+)</a>"

    const-string v15, "$1"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 320
    const-string v14, "<a href=\'vkontakte://search/[^\']+\'>([^<]+)</a>"

    const-string v15, "$1"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 321
    const v14, 0x7f08013f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    invoke-virtual {v14, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget v14, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 323
    const/4 v10, 0x0

    .line 324
    .local v10, "showAttachView":Z
    iget-object v14, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_13

    .line 332
    :goto_5
    iget-object v14, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_14

    .line 340
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 341
    iget v14, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v14, :cond_a

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 343
    .end local v3    # "edit":Lcom/vkontakte/android/NewsEntry;
    .end local v10    # "showAttachView":Z
    .end local v11    # "text":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 344
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gez v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    neg-int v14, v14

    invoke-static {v14}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_c

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "edit"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-lez v14, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    if-eq v14, v15, :cond_d

    .line 345
    :cond_c
    const v14, 0x7f080149

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setEnabled(Z)V

    .line 346
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v14, 0x3ecccccd    # 0.4f

    const v15, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v14, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 347
    .local v1, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 348
    const v14, 0x7f080149

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    .end local v1    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v14}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v14

    if-nez v14, :cond_e

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 352
    :cond_e
    return-void

    .line 111
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const v15, 0x7f020244

    invoke-virtual {v14, v15}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_0

    .line 254
    .restart local v4    # "link":Ljava/lang/String;
    .restart local v9    # "ptn":Ljava/util/regex/Pattern;
    .restart local v12    # "txt":Ljava/lang/String;
    :cond_10
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "link_title"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "link_title"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_1

    .line 259
    .end local v4    # "link":Ljava/lang/String;
    .end local v9    # "ptn":Ljava/util/regex/Pattern;
    .end local v12    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v13

    .local v13, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    const-string v15, "WTF you just did?!"

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 271
    .end local v13    # "x":Ljava/lang/Exception;
    .restart local v8    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 272
    .local v7, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v16, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_3

    .line 309
    .end local v7    # "photo":Ljava/lang/String;
    .end local v8    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    const v14, 0x7f080144

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 310
    const v14, 0x7f080143

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 311
    const v14, 0x7f080142

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 324
    .restart local v3    # "edit":Lcom/vkontakte/android/NewsEntry;
    .restart local v10    # "showAttachView":Z
    .restart local v11    # "text":Ljava/lang/String;
    :cond_13
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Attachment;

    .line 325
    .local v2, "att":Lcom/vkontakte/android/Attachment;
    instance-of v15, v2, Lcom/vkontakte/android/SignatureLinkAttachment;

    if-eqz v15, :cond_9

    .line 326
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 327
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    .line 328
    iget-object v14, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 332
    .end local v2    # "att":Lcom/vkontakte/android/Attachment;
    :cond_14
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Attachment;

    .line 333
    .restart local v2    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v15, v2, Lcom/vkontakte/android/GeoAttachment;

    if-nez v15, :cond_15

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v15, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 335
    const/4 v10, 0x1

    .line 336
    goto/16 :goto_6

    .line 337
    :cond_15
    check-cast v2, Lcom/vkontakte/android/GeoAttachment;

    .end local v2    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/NewPostActivity;->attachLocation(Lcom/vkontakte/android/GeoAttachment;)V

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 360
    const v1, 0x7f060012

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 361
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 362
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 363
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 671
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 673
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 367
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->onBackPressed()V

    .line 372
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 705
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 706
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewPostActivity$18;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 711
    const-wide/16 v2, 0xc8

    .line 706
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 712
    return-void
.end method

.method public post()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 715
    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 716
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 721
    const/4 v3, 0x0

    .line 722
    .local v3, "exportParam":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v6, :cond_8

    const-string v3, "twitter,facebook"

    .line 725
    :cond_1
    :goto_0
    const v6, 0x7f08013f

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\*((?:id|club)[0-9-]+) \\(([^\\)]+)\\)"

    const-string v8, "[$1|$2]"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, "ptext":Ljava/lang/String;
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "edit"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "wall.edit"

    :goto_1
    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 727
    .local v5, "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "device"

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 728
    const-string v6, "owner_id"

    iget v7, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 729
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "edit"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 730
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "edit"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    .line 731
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    const-string v6, "post_id"

    iget v7, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 733
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_2
    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v6, :cond_3

    .line 734
    const-string v6, "from_group"

    invoke-virtual {v5, v6, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 736
    :cond_3
    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v6, :cond_4

    .line 737
    const-string v6, "signed"

    invoke-virtual {v5, v6, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 739
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v6, :cond_5

    .line 740
    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget v6, v6, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-gtz v6, :cond_b

    .line 741
    const-string v6, "lat"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v8, v8, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    const-string v7, "long"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v9, v9, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 746
    :cond_5
    :goto_2
    invoke-static {v1}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 747
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 748
    const-string v6, "attachments"

    const-string v7, ","

    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 751
    :cond_6
    const-string v6, "message"

    invoke-virtual {v5, v6, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 752
    const-string v7, "friends_only"

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v6, :cond_c

    const-string v6, "1"

    :goto_3
    invoke-virtual {v5, v7, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 753
    const-string v6, "services"

    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 754
    new-instance v7, Lcom/vkontakte/android/NewPostActivity$19;

    invoke-direct {v7, p0, v4, v1}, Lcom/vkontakte/android/NewPostActivity$19;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 828
    invoke-virtual {v6, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 829
    invoke-virtual {v6, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 914
    .end local v3    # "exportParam":Ljava/lang/String;
    .end local v4    # "ptext":Ljava/lang/String;
    .end local v5    # "req":Lcom/vkontakte/android/APIRequest;
    :goto_4
    return-void

    .line 716
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 717
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v7, :cond_0

    goto :goto_4

    .line 723
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    .restart local v3    # "exportParam":Ljava/lang/String;
    :cond_8
    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v6, :cond_9

    const-string v3, "twitter"

    goto/16 :goto_0

    .line 724
    :cond_9
    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v6, :cond_1

    const-string v3, "facebook"

    goto/16 :goto_0

    .line 726
    .restart local v4    # "ptext":Ljava/lang/String;
    :cond_a
    const-string v6, "wall.post"

    goto/16 :goto_1

    .line 743
    .restart local v5    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_b
    const-string v6, "place_id"

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget v7, v7, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    .line 752
    :cond_c
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public showOptions()V
    .locals 15

    .prologue
    const v14, 0x7f06008a

    const v13, 0x7f060028

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 457
    iget v7, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-lez v7, :cond_3

    .line 458
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v1, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x4

    new-array v5, v7, [Z

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    aput-boolean v7, v5, v8

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    aput-boolean v7, v5, v9

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    aput-boolean v7, v5, v11

    .line 461
    .local v5, "opts":[Z
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0601e6

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v7, "friendsonly"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "export_twitter_avail"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0601e7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    const-string v7, "twitter"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "export_facebook_avail"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0601e8

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v7, "fb"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_1
    new-instance v9, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 474
    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/vkontakte/android/NewPostActivity$11;

    invoke-direct {v8, p0, v1, v5}, Lcom/vkontakte/android/NewPostActivity$11;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/ArrayList;[Z)V

    invoke-virtual {v9, v7, v5, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 489
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$12;

    invoke-direct {v8, p0, v5}, Lcom/vkontakte/android/NewPostActivity$12;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 505
    invoke-virtual {v7, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 506
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 580
    .end local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "opts":[Z
    :cond_2
    :goto_0
    return-void

    .line 508
    :cond_3
    iget v7, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    neg-int v7, v7

    invoke-static {v7}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 509
    new-array v5, v11, [Z

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    aput-boolean v7, v5, v8

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    aput-boolean v7, v5, v9

    .line 510
    .restart local v5    # "opts":[Z
    new-array v3, v11, [Z

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "public"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_1
    aput-boolean v7, v3, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "public"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-nez v7, :cond_5

    move v7, v8

    :goto_2
    aput-boolean v7, v3, v9

    .line 511
    .local v3, "enabled":[Z
    new-instance v7, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    new-array v10, v11, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0600de

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f060118

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v9

    .line 513
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$13;

    invoke-direct {v8, p0, v5, v3}, Lcom/vkontakte/android/NewPostActivity$13;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z[Z)V

    .line 512
    invoke-virtual {v7, v10, v5, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 527
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$14;

    invoke-direct {v8, p0, v5}, Lcom/vkontakte/android/NewPostActivity$14;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 535
    invoke-virtual {v7, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 536
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 537
    .local v2, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewPostActivity$15;

    invoke-direct {v8, p0, v2, v3}, Lcom/vkontakte/android/NewPostActivity$15;-><init>(Lcom/vkontakte/android/NewPostActivity;Landroid/app/AlertDialog;[Z)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 547
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Landroid/widget/ArrayAdapter;

    .line 548
    .local v6, "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v0, Lcom/vkontakte/android/NewPostActivity$16;

    invoke-direct {v0, p0, v6, v3}, Lcom/vkontakte/android/NewPostActivity$16;-><init>(Lcom/vkontakte/android/NewPostActivity;Landroid/widget/ArrayAdapter;[Z)V

    .line 578
    .local v0, "a":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .end local v0    # "a":Landroid/widget/BaseAdapter;
    .end local v2    # "dlg":Landroid/app/AlertDialog;
    .end local v3    # "enabled":[Z
    .end local v6    # "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4
    move v7, v9

    .line 510
    goto :goto_1

    :cond_5
    move v7, v9

    goto :goto_2
.end method

.method public startLocationChooser()V
    .locals 3

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    iget v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    const-class v1, Lcom/vkontakte/android/CheckInActivity;

    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 445
    return-void

    .line 443
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-class v1, Lcom/vkontakte/android/SelectGeoPointActivity;

    goto :goto_0
.end method

.method public startMentionChooser()V
    .locals 4

    .prologue
    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "FriendsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 453
    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 454
    return-void
.end method
