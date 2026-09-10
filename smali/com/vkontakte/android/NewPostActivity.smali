.class public Lcom/vkontakte/android/NewPostActivity;
.super Landroid/app/Activity;
.source "NewPostActivity.java"


# static fields
.field private static final AUDIO_RESULT:I = 0x4

.field private static final DOCUMENT_RESULT:I = 0x6

.field private static final LOCATION_RESULT:I = 0x3

.field private static final MENTION_RESULT:I = 0x7

.field public static final NOTIFY_ID:I = 0x1

.field public static final NOTIFY_ID_PROGR:I = 0x2

.field private static final PHOTO_RESULT:I = 0x1

.field public static final POLL_EDIT_RESULT:I = 0x9

.field private static final POLL_RESULT:I = 0x8

.field private static final VIDEO_RESULT:I = 0x5


# instance fields
.field private attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field camIntent:Landroid/content/Intent;

.field private changed:Z

.field exportToFacebook:Z

.field exportToTwitter:Z

.field friendsOnly:Z

.field fromGroup:Z

.field private geoAttach:Lcom/vkontakte/android/GeoAttachment;

.field imageUri:Landroid/net/Uri;

.field private isComment:Z

.field private isSuggest:Z

.field mdSetup:Z

.field needPostAfterLocation:Z

.field notification:Landroid/app/Notification;

.field private optionsAlertView:Landroid/widget/ListView;

.field private postponeTo:Ljava/util/Calendar;

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 80
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->publishing:Z

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 90
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->needPostAfterLocation:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    .line 94
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    .line 95
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/NewPostActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->checkAttachLimit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/Attachment;)Lcom/vkontakte/android/Attachment;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startAudioSelector()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startVideoSelector()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startDocumentSelector()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startPollSelector()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateTimer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    return-void
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showTimerDlg()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/NewPostActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/vkontakte/android/NewPostActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateFieldSize()V

    return-void
.end method

.method static synthetic access$2101(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->removeLocation()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showExtendedAttachMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/vkontakte/android/NewPostActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    return p1
.end method

.method private attachLocation(Lcom/vkontakte/android/GeoAttachment;)V
    .locals 2
    .param p1, "att"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 896
    const v0, 0x7f0801ab

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 897
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateBottomLine()V

    .line 898
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 899
    return-void
.end method

.method private checkAttachLimit()Z
    .locals 7

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 467
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v5

    iget-boolean v4, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v4, :cond_0

    move v4, v0

    :goto_0
    if-lt v5, v4, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0035

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v6, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 471
    :goto_2
    return v0

    :cond_0
    move v4, v1

    .line 467
    goto :goto_0

    :cond_1
    move v0, v1

    .line 468
    goto :goto_1

    :cond_2
    move v0, v3

    .line 471
    goto :goto_2
.end method

.method private removeLocation()V
    .locals 2

    .prologue
    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 903
    const v0, 0x7f0801ab

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 904
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateBottomLine()V

    .line 905
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    .line 907
    return-void
.end method

.method private showAttachView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 442
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setVisibility(I)V

    .line 443
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateFieldSize()V

    .line 444
    return-void

    .line 442
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showExtendedAttachMenu()V
    .locals 9

    .prologue
    .line 481
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v5, "opts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v6, 0x7f0d0036

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    const v6, 0x7f0d0356

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const v6, 0x7f0d00ae

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget v6, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gez v6, :cond_3

    .line 486
    :cond_0
    const/4 v3, 0x0

    .line 487
    .local v3, "hasPoll":Z
    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 488
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 489
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/PollAttachment;

    if-eqz v6, :cond_1

    .line 490
    const/4 v3, 0x1

    .line 494
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    if-nez v3, :cond_3

    const v6, 0x7f0d0031

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v3    # "hasPoll":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v7, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/vkontakte/android/NewPostActivity$12;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewPostActivity$12;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v7, v6, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d002c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 522
    .local v2, "dlg":Landroid/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 523
    return-void
.end method

.method private showTimerDlg()V
    .locals 5

    .prologue
    .line 526
    new-instance v1, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;-><init>()V

    .line 527
    .local v1, "p":Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "date"

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 530
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 532
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$13;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->setOnSelectedListener(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;)V

    .line 539
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "picker"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method private startAudioSelector()V
    .locals 4

    .prologue
    .line 553
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 555
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "AudioListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 558
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 559
    return-void
.end method

.method private startDocumentSelector()V
    .locals 4

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "limit"

    iget-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 574
    return-void

    .line 572
    :cond_0
    const/16 v1, 0xa

    goto :goto_0
.end method

.method private startPollSelector()V
    .locals 3

    .prologue
    .line 577
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/PollEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "oid"

    iget v2, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    return-void
.end method

.method private startVideoSelector()V
    .locals 4

    .prologue
    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 564
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "OwnerVideoListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 567
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 568
    return-void
.end method

.method private updateBottomLine()V
    .locals 7

    .prologue
    const v6, 0x7f0801a7

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 912
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 913
    .local v0, "date":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d032a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v0    # "date":I
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_1

    .line 916
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 919
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 920
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\n"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    :goto_1
    return-void

    .line 916
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    goto :goto_0

    .line 922
    :cond_3
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateExportIcons()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 475
    const v0, 0x7f0801aa

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 476
    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 477
    const v0, 0x7f0801a8

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    return-void

    :cond_0
    move v0, v2

    .line 475
    goto :goto_0

    :cond_1
    move v0, v2

    .line 476
    goto :goto_1

    :cond_2
    move v1, v2

    .line 477
    goto :goto_2
.end method

.method private updateFieldSize()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 447
    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    return-void

    :cond_1
    move v0, v1

    .line 447
    goto :goto_0
.end method

.method private updateSendButton()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f080022

    .line 952
    const v1, 0x7f0801a4

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 953
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 954
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    .line 955
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 960
    :goto_2
    return-void

    .end local v0    # "enable":Z
    :cond_1
    move v0, v2

    .line 952
    goto :goto_0

    .line 955
    .restart local v0    # "enable":Z
    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_1

    .line 957
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v2, v1, v2

    if-eqz v0, :cond_4

    const/16 v1, 0xff

    :goto_3
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 958
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 957
    :cond_4
    const/16 v1, 0x80

    goto :goto_3

    .line 958
    :cond_5
    const v2, -0x7f000001

    goto :goto_4
.end method

.method private updateTimer()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 543
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 544
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 545
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    move-object v0, v1

    check-cast v0, [Z

    .line 546
    .local v0, "opts":[Z
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v4, :cond_2

    :goto_1
    aput-boolean v2, v0, v1

    .line 548
    .end local v0    # "opts":[Z
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-nez v2, :cond_3

    const v2, 0x7f0d028c

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 549
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateBottomLine()V

    .line 550
    return-void

    :cond_1
    move v1, v3

    .line 544
    goto :goto_0

    .restart local v0    # "opts":[Z
    :cond_2
    move v2, v3

    .line 546
    goto :goto_1

    .line 548
    .end local v0    # "opts":[Z
    :cond_3
    const v2, 0x7f0d032b

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 818
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 822
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    .line 824
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 825
    const-string v0, "point"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->attachLocation(Lcom/vkontakte/android/GeoAttachment;)V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$23;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/NewPostActivity$23;-><init>(Lcom/vkontakte/android/NewPostActivity;ILandroid/content/Intent;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v0, :cond_4

    .line 964
    :cond_1
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d0089

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0d0256

    :goto_1
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$24;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$24;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 978
    :goto_2
    return-void

    .line 964
    :cond_2
    const v0, 0x7f0d0088

    goto :goto_0

    :cond_3
    const v0, 0x7f0d009d

    goto :goto_1

    .line 976
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 423
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datepicker"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 425
    .local v0, "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 427
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 428
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datepicker"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "timepicker"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0    # "f":Landroid/app/DialogFragment;
    check-cast v0, Landroid/app/DialogFragment;

    .line 432
    .restart local v0    # "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 434
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 435
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "timepicker"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 439
    .end local v0    # "f":Landroid/app/DialogFragment;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "edit"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    const v18, 0x7f0d020a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 107
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "suggest"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const v18, 0x7f0d0243

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 109
    :cond_1
    sget-boolean v18, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v18, :cond_9

    .line 110
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->requestWindowFeature(I)Z

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Landroid/view/Window;->setFlags(II)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 113
    .local v9, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v18, 0x43fa0000    # 500.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 114
    const v18, 0x43a28000    # 325.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 116
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 117
    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v0, v18

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 118
    const/16 v18, 0x20

    move/from16 v0, v18

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 119
    const/16 v18, 0x31

    move/from16 v0, v18

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 121
    const/high16 v18, 0x42200000    # 40.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 131
    .end local v9    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    const/high16 v18, 0x7f030000

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "uid"

    sget v20, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 135
    const v18, 0x7f030082

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setContentView(I)V

    .line 137
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 138
    const v18, 0x7f0801a2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ViewUtils;->setNoClipRecursive(Landroid/view/View;)V

    .line 140
    :cond_2
    const v18, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$1;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    const-wide/16 v20, 0x64

    invoke-virtual/range {v18 .. v21}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$2;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v18, 0x7f0801ad

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$3;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v18, 0x7f0801ab

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$4;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v18, 0x7f0801af

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$5;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v18, 0x7f0801ac

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$6;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v18, 0x7f0801ae

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$7;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v18, 0x7f0801a7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const v18, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$8;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    const v18, 0x7f0801a5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$9;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setCallback(Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;)V

    .line 265
    const-string v18, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "link_title"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 267
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "txt":Ljava/lang/String;
    const/4 v7, 0x0

    .line 269
    .local v7, "link":Ljava/lang/String;
    const-string v18, "((?:(?:http|https)://)[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 270
    .local v12, "ptn":Ljava/util/regex/Pattern;
    if-eqz v15, :cond_4

    .line 271
    invoke-virtual {v12, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 272
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 273
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 274
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 275
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 278
    .end local v8    # "m":Ljava/util/regex/Matcher;
    :cond_4
    const-string v18, "vk"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LINK "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz v7, :cond_5

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/LinkAttachment;

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 281
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 283
    :cond_5
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "link_title"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 284
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "link_title"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 288
    :cond_6
    :goto_1
    const v18, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const v18, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v7    # "link":Ljava/lang/String;
    .end local v12    # "ptn":Ljava/util/regex/Pattern;
    .end local v15    # "txt":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "photoURI"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "photoURI"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 301
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "photos"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "photos"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 303
    .local v11, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 304
    .local v10, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_3

    .line 125
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "photo":Ljava/lang/String;
    .end local v11    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const v19, 0x7f0201ea

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_0

    .line 285
    .restart local v7    # "link":Ljava/lang/String;
    .restart local v12    # "ptn":Ljava/util/regex/Pattern;
    .restart local v15    # "txt":Ljava/lang/String;
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "link_title"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "link_title"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto/16 :goto_1

    .line 291
    .end local v7    # "link":Ljava/lang/String;
    .end local v12    # "ptn":Ljava/util/regex/Pattern;
    .end local v15    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v17

    .local v17, "x":Ljava/lang/Exception;
    const-string v18, "vk"

    const-string v19, "WTF you just did?!"

    invoke-static/range {v18 .. v19}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 305
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v11    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 309
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v18, v0

    sget v19, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "edit"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_12

    .line 310
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "export_twitter_avail"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 311
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 312
    :cond_d
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "export_facebook_avail"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 313
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 314
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    .line 320
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "public"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 321
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "edit"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "edit"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/NewsEntry;

    .line 323
    .local v5, "edit":Lcom/vkontakte/android/NewsEntry;
    iget-object v14, v5, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 324
    .local v14, "text":Ljava/lang/String;
    const-string v18, "<a href=\'vkontakte://profile/([0-9]+)\'>([^<]+)</a>"

    const-string v19, "*id$1 ($2)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 325
    const-string v18, "<a href=\'vkontakte://profile/-([0-9]+)\'>([^<]+)</a>"

    const-string v19, "*club$1 ($2)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 326
    const-string v18, "<a href=\'vklink://view/[^\']+\'>([^<]+)</a>"

    const-string v19, "$1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 327
    const-string v18, "<a href=\'vkontakte://search/[^\']+\'>([^<]+)</a>"

    const-string v19, "$1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 328
    const v18, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const v18, 0x7f0801a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 330
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 331
    const/4 v13, 0x0

    .line 332
    .local v13, "showAttachView":Z
    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 333
    .local v4, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v4, Lcom/vkontakte/android/SignatureLinkAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 334
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 335
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    .line 336
    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    const v18, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f080038

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    move-object/from16 v19, v0

    check-cast v19, Lcom/vkontakte/android/LinkAttachment;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const v18, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .end local v4    # "att":Lcom/vkontakte/android/Attachment;
    :cond_11
    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 343
    .restart local v4    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v4, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 345
    const/4 v13, 0x1

    goto :goto_5

    .line 316
    .end local v4    # "att":Lcom/vkontakte/android/Attachment;
    .end local v5    # "edit":Lcom/vkontakte/android/NewsEntry;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "showAttachView":Z
    .end local v14    # "text":Ljava/lang/String;
    :cond_12
    const v18, 0x7f0801aa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 317
    const v18, 0x7f0801a9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v18, 0x7f0801a8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 347
    .restart local v4    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v5    # "edit":Lcom/vkontakte/android/NewsEntry;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v13    # "showAttachView":Z
    .restart local v14    # "text":Ljava/lang/String;
    :cond_13
    check-cast v4, Lcom/vkontakte/android/GeoAttachment;

    .end local v4    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/NewPostActivity;->attachLocation(Lcom/vkontakte/android/GeoAttachment;)V

    goto :goto_5

    .line 350
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 351
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v18, v0

    if-gez v18, :cond_15

    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v18, v0

    sget v19, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 352
    :cond_15
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 353
    const v18, 0x7f0801af

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 354
    const v18, 0x7f0801ab

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 355
    const v18, 0x7f0d00b6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 356
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    .line 358
    :cond_16
    const/16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v18

    if-eqz v18, :cond_20

    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_20

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    .line 359
    const/16 v18, 0x800

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 360
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    move-object/from16 v18, v0

    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->time:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateTimer()V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080022

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v19, 0x7f0d032b

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 364
    const/16 v18, 0x200

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    .line 365
    const/16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 366
    const/16 v18, 0x4000

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    .line 369
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 370
    const v18, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f080038

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 372
    const v18, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateFieldSize()V

    .line 376
    :cond_18
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    move/from16 v18, v0

    if-lez v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    move-object/from16 v18, v0

    if-nez v18, :cond_19

    .line 378
    const v18, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f080038

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const-string v19, "..."

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v16, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v18, Lcom/vkontakte/android/NewPostActivity$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$10;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 398
    .end local v5    # "edit":Lcom/vkontakte/android/NewsEntry;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "showAttachView":Z
    .end local v14    # "text":Ljava/lang/String;
    .end local v16    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v18, v0

    if-gez v18, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "edit"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    move/from16 v18, v0

    if-nez v18, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "edit"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/NewsEntry;

    const/16 v19, 0x800

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v18

    if-eqz v18, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v18, v0

    if-lez v18, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v18, v0

    sget v19, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    .line 400
    :cond_1c
    const v18, 0x7f0801af

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_1d

    .line 401
    const v18, 0x7f0801af

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    .line 402
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const v18, 0x3ecccccd    # 0.4f

    const v19, 0x3ecccccd    # 0.4f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 403
    .local v3, "aa":Landroid/view/animation/AlphaAnimation;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 404
    const v18, 0x7f0801af

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    .end local v3    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v18

    if-nez v18, :cond_1e

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 410
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/NewPostActivity$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$11;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    const-wide/16 v20, 0x64

    invoke-virtual/range {v18 .. v21}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    move/from16 v18, v0

    if-nez v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    move-object/from16 v18, v0

    if-nez v18, :cond_1f

    .line 417
    const v18, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f080038

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "username"

    const-string v21, "DELETED"

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :cond_1f
    return-void

    .line 358
    .restart local v5    # "edit":Lcom/vkontakte/android/NewsEntry;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v13    # "showAttachView":Z
    .restart local v14    # "text":Ljava/lang/String;
    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 451
    const v1, 0x7f0d028c

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 452
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 453
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 454
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 947
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 949
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->onBackPressed()V

    .line 463
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 981
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 982
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$25;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewPostActivity$25;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    return-void
.end method

.method public post()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 991
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 993
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 994
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v8, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v8, :cond_1

    goto :goto_0

    .line 998
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    :cond_2
    const/4 v4, 0x0

    .line 999
    .local v4, "exportParam":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v8, :cond_9

    const-string v4, "twitter,facebook"

    .line 1002
    :cond_3
    :goto_1
    const v8, 0x7f0801a4

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\*((?:id|club)[0-9-]+) \\(([^\\)]+)\\)"

    const-string v10, "[$1|$2]"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1003
    .local v6, "ptext":Ljava/lang/String;
    new-instance v7, Lcom/vkontakte/android/APIRequest;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "edit"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v8, :cond_b

    const-string v8, ""

    :goto_2
    invoke-direct {v7, v8}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v7, "req":Lcom/vkontakte/android/APIRequest;
    const-string v8, "device"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1005
    const-string v8, "owner_id"

    iget v9, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1006
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_4

    .line 1007
    const-string v8, "publish_date"

    iget-object v9, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1010
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "edit"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1011
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "edit"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    .line 1012
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v8, :cond_d

    const-string v8, "comment_id"

    :goto_3
    iget v9, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1013
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v8, :cond_5

    .line 1014
    const-string v8, "method"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".editComment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1015
    :cond_5
    move-object v3, v2

    .line 1019
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    .local v3, "edit":Lcom/vkontakte/android/NewsEntry;
    :goto_4
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v8, :cond_6

    .line 1020
    const-string v8, "from_group"

    invoke-virtual {v7, v8, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1022
    :cond_6
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v8, :cond_f

    .line 1023
    const-string v8, "signed"

    invoke-virtual {v7, v8, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1027
    :cond_7
    :goto_5
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v8, :cond_8

    .line 1028
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget v8, v8, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-gtz v8, :cond_10

    .line 1029
    const-string v8, "lat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v10, v10, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v8

    const-string v9, "long"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v11, v11, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1034
    :cond_8
    :goto_6
    invoke-static {v1}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 1035
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_11

    .line 1036
    const-string v8, "attachments"

    const-string v9, ","

    invoke-static {v9, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1041
    :goto_7
    const-string v8, "message"

    invoke-virtual {v7, v8, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1042
    const-string v9, "friends_only"

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v8, :cond_12

    const-string v8, "1"

    :goto_8
    invoke-virtual {v7, v9, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1043
    const-string v8, "services"

    invoke-virtual {v7, v8, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/NewPostActivity$26;

    invoke-direct {v9, p0, v6, v3, v1}, Lcom/vkontakte/android/NewPostActivity$26;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 1000
    .end local v3    # "edit":Lcom/vkontakte/android/NewsEntry;
    .end local v6    # "ptext":Ljava/lang/String;
    .end local v7    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_9
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v8, :cond_a

    const-string v4, "twitter"

    goto/16 :goto_1

    .line 1001
    :cond_a
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v8, :cond_3

    const-string v4, "facebook"

    goto/16 :goto_1

    .line 1003
    .restart local v6    # "ptext":Ljava/lang/String;
    :cond_b
    const-string v8, "wall.edit"

    goto/16 :goto_2

    :cond_c
    const-string v8, "wall.post"

    goto/16 :goto_2

    .line 1012
    .restart local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v7    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_d
    const-string v8, "post_id"

    goto/16 :goto_3

    .line 1017
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "edit":Lcom/vkontakte/android/NewsEntry;
    goto/16 :goto_4

    .line 1024
    :cond_f
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v8, :cond_7

    .line 1025
    const-string v8, "signed"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_5

    .line 1031
    :cond_10
    const-string v8, "place_id"

    iget-object v9, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget v9, v9, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_6

    .line 1038
    :cond_11
    const-string v8, "attachments"

    const-string v9, " "

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_7

    .line 1042
    :cond_12
    const/4 v8, 0x0

    goto :goto_8
.end method

.method public showOptions()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 615
    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-lez v8, :cond_9

    .line 616
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v1, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v6, v13, [Z

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    aput-boolean v8, v6, v10

    aput-boolean v10, v6, v9

    aput-boolean v10, v6, v12

    aput-boolean v10, v6, v11

    .line 619
    .local v6, "opts":[Z
    new-array v3, v13, [Z

    fill-array-data v3, :array_0

    .line 620
    .local v3, "enabled":[Z
    const/4 v5, 0x1

    .line 621
    .local v5, "o":I
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0d0185

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v8, "friendsonly"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v10}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "export_twitter_avail"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0d0184

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v8, "twitter"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    aput-boolean v8, v6, v5

    .line 627
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v8, :cond_0

    aput-boolean v10, v3, v5

    .line 628
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 630
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v10}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "export_facebook_avail"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 631
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0d0183

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v8, "fb"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    aput-boolean v8, v6, v5

    .line 634
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v8, :cond_2

    aput-boolean v10, v3, v5

    .line 635
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 637
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "edit"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "edit"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    const/16 v11, 0x800

    invoke-virtual {v8, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v11, Lcom/vkontakte/android/Global;->uid:I

    if-eq v8, v11, :cond_5

    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gez v8, :cond_6

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v8, :cond_6

    .line 638
    :cond_5
    const v8, 0x7f0d0329

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    const-string v8, "timer"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_8

    move v8, v9

    :goto_0
    aput-boolean v8, v6, v5

    .line 641
    add-int/lit8 v5, v5, 0x1

    .line 644
    :cond_6
    new-instance v9, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v10, Lcom/vkontakte/android/NewPostActivity$16;

    invoke-direct {v10, p0, v1, v3, v6}, Lcom/vkontakte/android/NewPostActivity$16;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/ArrayList;[Z[Z)V

    invoke-virtual {v9, v8, v6, v10}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d01cd

    new-instance v10, Lcom/vkontakte/android/NewPostActivity$15;

    invoke-direct {v10, p0, v6}, Lcom/vkontakte/android/NewPostActivity$15;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d020f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 694
    .local v2, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    .line 695
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 696
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$17;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewPostActivity$17;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 758
    .end local v5    # "o":I
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/NewPostActivity$20;

    invoke-direct {v9, p0, v2, v3}, Lcom/vkontakte/android/NewPostActivity$20;-><init>(Lcom/vkontakte/android/NewPostActivity;Landroid/app/AlertDialog;[Z)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 768
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    .line 769
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 770
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$21;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewPostActivity$21;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 776
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ArrayAdapter;

    .line 777
    .local v7, "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v0, Lcom/vkontakte/android/NewPostActivity$22;

    invoke-direct {v0, p0, v7, v3}, Lcom/vkontakte/android/NewPostActivity$22;-><init>(Lcom/vkontakte/android/NewPostActivity;Landroid/widget/ArrayAdapter;[Z)V

    .line 814
    .local v0, "a":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 815
    .end local v0    # "a":Landroid/widget/BaseAdapter;
    .end local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "dlg":Landroid/app/AlertDialog;
    .end local v3    # "enabled":[Z
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "opts":[Z
    .end local v7    # "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_7
    return-void

    .restart local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "enabled":[Z
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "o":I
    .restart local v6    # "opts":[Z
    :cond_8
    move v8, v10

    .line 640
    goto :goto_0

    .line 703
    .end local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "enabled":[Z
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "o":I
    .end local v6    # "opts":[Z
    :cond_9
    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    neg-int v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 704
    new-array v6, v11, [Z

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    aput-boolean v8, v6, v10

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    aput-boolean v8, v6, v9

    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_f

    move v8, v9

    :goto_2
    aput-boolean v8, v6, v12

    .line 705
    .restart local v6    # "opts":[Z
    new-array v3, v11, [Z

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "public"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v9

    :goto_3
    aput-boolean v8, v3, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "public"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v8, :cond_11

    :cond_a
    move v8, v9

    :goto_4
    aput-boolean v8, v3, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "public"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v8, :cond_12

    :cond_b
    move v8, v9

    :goto_5
    aput-boolean v8, v3, v12

    .line 707
    .restart local v3    # "enabled":[Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .restart local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v8, 0x7f0d020c

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    const v8, 0x7f0d020d

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    const-string v8, "from_group"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    const-string v8, "signed"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "edit"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "edit"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    const/16 v11, 0x800

    invoke-virtual {v8, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v8

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    if-eqz v8, :cond_e

    :cond_c
    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v11, Lcom/vkontakte/android/Global;->uid:I

    if-eq v8, v11, :cond_d

    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gtz v8, :cond_e

    .line 715
    :cond_d
    const v8, 0x7f0d0329

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    const-string v8, "timer"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_13

    :goto_6
    aput-boolean v9, v6, v12

    .line 720
    :cond_e
    new-instance v9, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v10, Lcom/vkontakte/android/NewPostActivity$19;

    invoke-direct {v10, p0, v3, v6}, Lcom/vkontakte/android/NewPostActivity$19;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z[Z)V

    invoke-virtual {v9, v8, v6, v10}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d01cd

    new-instance v10, Lcom/vkontakte/android/NewPostActivity$18;

    invoke-direct {v10, p0, v6}, Lcom/vkontakte/android/NewPostActivity$18;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d020f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .restart local v2    # "dlg":Landroid/app/AlertDialog;
    goto/16 :goto_1

    .end local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "dlg":Landroid/app/AlertDialog;
    .end local v3    # "enabled":[Z
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "opts":[Z
    :cond_f
    move v8, v10

    .line 704
    goto/16 :goto_2

    .restart local v6    # "opts":[Z
    :cond_10
    move v8, v10

    .line 705
    goto/16 :goto_3

    :cond_11
    move v8, v10

    goto/16 :goto_4

    :cond_12
    move v8, v10

    goto/16 :goto_5

    .restart local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "enabled":[Z
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    move v9, v10

    .line 717
    goto :goto_6

    .line 619
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public startLocationChooser()V
    .locals 5

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "locationProviders":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 585
    :cond_0
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0158

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0157

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01d8

    new-instance v4, Lcom/vkontakte/android/NewPostActivity$14;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewPostActivity$14;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0052

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget v2, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_2

    const-class v2, Lcom/vkontakte/android/CheckInActivity;

    :goto_1
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 600
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 599
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-class v2, Lcom/vkontakte/android/SelectGeoPointActivity;

    goto :goto_1
.end method

.method public startMentionChooser()V
    .locals 4

    .prologue
    .line 604
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 605
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 606
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "FriendsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 609
    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 610
    return-void
.end method
