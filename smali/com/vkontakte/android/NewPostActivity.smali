.class public Lcom/vkontakte/android/NewPostActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
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

    .line 62
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 79
    iput v1, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 81
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->mdSetup:Z

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->publishing:Z

    .line 88
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 91
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->needPostAfterLocation:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    .line 95
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    .line 96
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    .line 102
    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/vkontakte/android/NewPostActivity;->saveDraft:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->checkAttachLimit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/Attachment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startAudioSelector()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startVideoSelector()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startDocumentSelector()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->startPollSelector()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateTimer()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showTimerDlg()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NewPostActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NewPostActivity;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateFieldSize()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/NewPostActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    return v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->removeLocation()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->showExtendedAttachMenu()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    return-void
.end method

.method private attachLocation(Lcom/vkontakte/android/GeoAttachment;)V
    .locals 2
    .param p1, "att"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 897
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateBottomLine()V

    .line 899
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 900
    return-void
.end method

.method private checkAttachLimit()Z
    .locals 7

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 468
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v5

    iget-boolean v4, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v4, :cond_0

    move v4, v0

    :goto_0
    if-lt v5, v4, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801f9

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

    .line 472
    :goto_2
    return v0

    :cond_0
    move v4, v1

    .line 468
    goto :goto_0

    :cond_1
    move v0, v1

    .line 469
    goto :goto_1

    :cond_2
    move v0, v3

    .line 472
    goto :goto_2
.end method

.method private removeLocation()V
    .locals 2

    .prologue
    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    .line 904
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 905
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateBottomLine()V

    .line 906
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    .line 908
    return-void
.end method

.method private showAttachView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 443
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setVisibility(I)V

    .line 444
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateFieldSize()V

    .line 445
    return-void

    .line 443
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showExtendedAttachMenu()V
    .locals 8

    .prologue
    .line 482
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v4, "opts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget v5, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gez v5, :cond_2

    .line 487
    :cond_0
    const/4 v3, 0x0

    .line 488
    .local v3, "hasPoll":Z
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 489
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 495
    :goto_0
    if-nez v3, :cond_2

    const v5, 0x7f08003d

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v3    # "hasPoll":Z
    :cond_2
    new-instance v6, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/vkontakte/android/NewPostActivity$12;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/NewPostActivity$12;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v6, v5, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 521
    const v6, 0x7f080118

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 522
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 523
    .local v2, "dlg":Landroid/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 524
    return-void

    .line 489
    .end local v2    # "dlg":Landroid/app/AlertDialog;
    .restart local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v3    # "hasPoll":Z
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 490
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/PollAttachment;

    if-eqz v6, :cond_1

    .line 491
    const/4 v3, 0x1

    .line 492
    goto :goto_0
.end method

.method private showTimerDlg()V
    .locals 5

    .prologue
    .line 527
    new-instance v1, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;-><init>()V

    .line 528
    .local v1, "p":Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "date"

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 531
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 533
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$13;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->setOnSelectedListener(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;)V

    .line 540
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "picker"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private startAudioSelector()V
    .locals 4

    .prologue
    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 556
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "AudioListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 559
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 560
    return-void
.end method

.method private startDocumentSelector()V
    .locals 4

    .prologue
    .line 572
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
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

    .line 574
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 575
    return-void

    .line 573
    :cond_0
    const/16 v1, 0xa

    goto :goto_0
.end method

.method private startPollSelector()V
    .locals 3

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/PollEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "oid"

    iget v2, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 581
    return-void
.end method

.method private startVideoSelector()V
    .locals 4

    .prologue
    .line 563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 565
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "VideoListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 568
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 569
    return-void
.end method

.method private updateBottomLine()V
    .locals 7

    .prologue
    const v6, 0x7f0901c7

    .line 911
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .local v1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 913
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 914
    .local v0, "date":I
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0802f8

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 916
    .end local v0    # "date":I
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_1

    .line 917
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 920
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 921
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\n"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    :goto_1
    return-void

    .line 917
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    goto :goto_0

    .line 923
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

    .line 476
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 477
    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    return-void

    :cond_0
    move v0, v2

    .line 476
    goto :goto_0

    :cond_1
    move v0, v2

    .line 477
    goto :goto_1

    :cond_2
    move v1, v2

    .line 478
    goto :goto_2
.end method

.method private updateFieldSize()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 448
    const v0, 0x7f0901c4

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

    .line 449
    return-void

    :cond_1
    move v0, v1

    .line 448
    goto :goto_0
.end method

.method private updateSendButton()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f09002b

    .line 953
    const v1, 0x7f0901c4

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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

    .line 954
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 955
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    .line 956
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 961
    :goto_2
    return-void

    .end local v0    # "enable":Z
    :cond_1
    move v0, v2

    .line 953
    goto :goto_0

    .line 956
    .restart local v0    # "enable":Z
    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_1

    .line 958
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

    .line 959
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 958
    :cond_4
    const/16 v1, 0x80

    goto :goto_3

    .line 959
    :cond_5
    const v2, -0x7f000001

    goto :goto_4
.end method

.method private updateTimer()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 544
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 545
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

    .line 546
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 547
    .local v0, "opts":[Z
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v4, :cond_2

    :goto_1
    aput-boolean v2, v0, v1

    .line 549
    .end local v0    # "opts":[Z
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-nez v2, :cond_3

    const v2, 0x7f08002c

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 550
    invoke-direct {p0}, Lcom/vkontakte/android/NewPostActivity;->updateBottomLine()V

    .line 551
    return-void

    :cond_1
    move v1, v3

    .line 545
    goto :goto_0

    .restart local v0    # "opts":[Z
    :cond_2
    move v2, v3

    .line 547
    goto :goto_1

    .line 549
    .end local v0    # "opts":[Z
    :cond_3
    const v2, 0x7f0802f9

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 819
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 892
    :goto_0
    return-void

    .line 823
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity;->changed:Z

    .line 825
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 826
    const-string v0, "point"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewPostActivity;->attachLocation(Lcom/vkontakte/android/GeoAttachment;)V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$23;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/NewPostActivity$23;-><init>(Lcom/vkontakte/android/NewPostActivity;ILandroid/content/Intent;)V

    .line 891
    const-wide/16 v2, 0x12c

    .line 830
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 964
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

    const v0, 0x7f0901c4

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

    .line 965
    :cond_1
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 966
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 967
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0801ff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 968
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080127

    :goto_1
    new-instance v2, Lcom/vkontakte/android/NewPostActivity$24;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewPostActivity$24;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 974
    const v1, 0x7f080041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 979
    :goto_2
    return-void

    .line 967
    :cond_2
    const v0, 0x7f0801ea

    goto :goto_0

    .line 968
    :cond_3
    const v0, 0x7f08007d

    goto :goto_1

    .line 977
    :cond_4
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 424
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datepicker"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 426
    .local v0, "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 428
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 429
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datepicker"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "timepicker"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0    # "f":Landroid/app/DialogFragment;
    check-cast v0, Landroid/app/DialogFragment;

    .line 433
    .restart local v0    # "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 435
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 436
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "timepicker"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 440
    .end local v0    # "f":Landroid/app/DialogFragment;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "edit"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const v17, 0x7f080197

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 108
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "suggest"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f080300

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 110
    :cond_1
    sget-boolean v17, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v17, :cond_19

    .line 111
    const-wide/16 v17, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->requestWindowFeature(J)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x2

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Landroid/view/Window;->setFlags(II)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 114
    .local v8, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v17, 0x43fa0000    # 500.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 115
    const v17, 0x43a28000    # 325.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 117
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 118
    const/high16 v17, 0x3f000000    # 0.5f

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 119
    const/16 v17, 0x20

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 120
    const/16 v17, 0x31

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    const/high16 v17, 0x42200000    # 40.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 132
    .end local v8    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    const/high16 v17, 0x7f030000

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "uid"

    sget v19, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 136
    const v17, 0x7f030091

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setContentView(I)V

    .line 138
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 139
    const v17, 0x7f0901c2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ViewUtils;->setNoClipRecursive(Landroid/view/View;)V

    .line 141
    :cond_2
    const v17, 0x7f0901c4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$1;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 145
    const-wide/16 v19, 0x64

    .line 141
    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$2;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v17, 0x7f0901cd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$3;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v17, 0x7f0901cb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$4;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v17, 0x7f0901cf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$5;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v17, 0x7f0901cc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$6;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v17, 0x7f0901ce

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$7;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v17, 0x7f0901c7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 223
    const v17, 0x7f0901c4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$8;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    const v17, 0x7f0901c5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$9;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setCallback(Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;)V

    .line 266
    const-string v17, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "text"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "link_title"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 268
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "text"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "txt":Ljava/lang/String;
    const/4 v6, 0x0

    .line 270
    .local v6, "link":Ljava/lang/String;
    const-string v17, "((?:(?:http|https)://)[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[0-9a-zA-Z/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 271
    .local v11, "ptn":Ljava/util/regex/Pattern;
    if-eqz v14, :cond_4

    .line 272
    invoke-virtual {v11, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 273
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 274
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 275
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 276
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 279
    .end local v7    # "m":Ljava/util/regex/Matcher;
    :cond_4
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "LINK "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz v6, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vkontakte/android/LinkAttachment;

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 282
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 284
    :cond_5
    if-eqz v14, :cond_1a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "link_title"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 285
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "link_title"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 289
    :cond_6
    :goto_1
    const v17, 0x7f0901c4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const v17, 0x7f0901c4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelection(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v6    # "link":Ljava/lang/String;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v14    # "txt":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "photoURI"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "photoURI"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V

    .line 299
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 302
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "photos"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "photos"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 304
    .local v10, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1b

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 310
    .end local v10    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v17, v0

    sget v18, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "edit"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1c

    .line 311
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "export_twitter_avail"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 312
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 313
    :cond_a
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "export_facebook_avail"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 314
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 315
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    .line 321
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "public"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 322
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "edit"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "edit"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/NewsEntry;

    .line 324
    .local v5, "edit":Lcom/vkontakte/android/NewsEntry;
    iget-object v13, v5, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 325
    .local v13, "text":Ljava/lang/String;
    const-string v17, "<a href=\'vkontakte://profile/([0-9]+)\'>([^<]+)</a>"

    const-string v18, "*id$1 ($2)"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 326
    const-string v17, "<a href=\'vkontakte://profile/-([0-9]+)\'>([^<]+)</a>"

    const-string v18, "*club$1 ($2)"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 327
    const-string v17, "<a href=\'vklink://view/[^\']+\'>([^<]+)</a>"

    const-string v18, "$1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 328
    const-string v17, "<a href=\'vkontakte://search/[^\']+\'>([^<]+)</a>"

    const-string v18, "$1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 329
    const v17, 0x7f0901c4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const v17, 0x7f0901c4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelection(I)V

    .line 331
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/NewPostActivity;->uid:I

    .line 332
    const/4 v12, 0x0

    .line 333
    .local v12, "showAttachView":Z
    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1d

    .line 343
    :goto_5
    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1e

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 352
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v17, v0

    if-gez v17, :cond_e

    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v17, v0

    sget v18, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 353
    :cond_e
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 354
    const v17, 0x7f0901cf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 355
    const v17, 0x7f0901cb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 356
    const v17, 0x7f0800e0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setTitle(I)V

    .line 357
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    .line 359
    :cond_f
    const/16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v17

    if-eqz v17, :cond_20

    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_20

    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    .line 360
    const/16 v17, 0x800

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 361
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->time:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateTimer()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f09002b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v18, 0x7f0802f9

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 365
    const/16 v17, 0x200

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    .line 366
    const/16 v17, 0x2000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 367
    const/16 v17, 0x4000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateExportIcons()V

    .line 370
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 371
    const v17, 0x7f0901c6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f090050

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 373
    const v17, 0x7f0901c6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateFieldSize()V

    .line 377
    :cond_11
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    move/from16 v17, v0

    if-lez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 379
    const v17, 0x7f0901c6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f090050

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const-string v18, "..."

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v15, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v0, v5, Lcom/vkontakte/android/NewsEntry;->createdBy:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v17, Lcom/vkontakte/android/NewPostActivity$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$10;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 399
    .end local v5    # "edit":Lcom/vkontakte/android/NewsEntry;
    .end local v12    # "showAttachView":Z
    .end local v13    # "text":Ljava/lang/String;
    .end local v15    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v17, v0

    if-gez v17, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "edit"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    move/from16 v17, v0

    if-nez v17, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "edit"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/NewsEntry;

    const/16 v18, 0x800

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v17

    if-eqz v17, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v17, v0

    if-lez v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    move/from16 v17, v0

    sget v18, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    .line 401
    :cond_15
    const v17, 0x7f0901cf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_16

    .line 402
    const v17, 0x7f0901cf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V

    .line 403
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const v17, 0x3ecccccd    # 0.4f

    const v18, 0x3ecccccd    # 0.4f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 404
    .local v3, "aa":Landroid/view/animation/AlphaAnimation;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 405
    const v17, 0x7f0901cf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 408
    .end local v3    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->updateSendButton()V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v17

    if-nez v17, :cond_17

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->showAttachView(Z)V

    .line 411
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vkontakte/android/NewPostActivity$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/NewPostActivity$11;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 415
    const-wide/16 v19, 0x64

    .line 411
    invoke-virtual/range {v17 .. v20}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    move-object/from16 v17, v0

    if-nez v17, :cond_18

    .line 418
    const v17, 0x7f0901c6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f090050

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "username"

    const-string v20, "DELETED"

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_18
    return-void

    .line 126
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const v18, 0x7f02027a

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_0

    .line 286
    .restart local v6    # "link":Ljava/lang/String;
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    .restart local v14    # "txt":Ljava/lang/String;
    :cond_1a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "link_title"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "link_title"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_1

    .line 292
    .end local v6    # "link":Ljava/lang/String;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v14    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v16

    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    const-string v18, "WTF you just did?!"

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 304
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v10    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 305
    .local v9, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_3

    .line 317
    .end local v9    # "photo":Ljava/lang/String;
    .end local v10    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    const v17, 0x7f0901ca

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v17, 0x7f0901c9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 319
    const v17, 0x7f0901c8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 333
    .restart local v5    # "edit":Lcom/vkontakte/android/NewsEntry;
    .restart local v12    # "showAttachView":Z
    .restart local v13    # "text":Ljava/lang/String;
    :cond_1d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 334
    .local v4, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v4, Lcom/vkontakte/android/SignatureLinkAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 335
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 336
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    .line 337
    iget-object v0, v5, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    const v17, 0x7f0901c6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f090050

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->sigAttach:Lcom/vkontakte/android/Attachment;

    move-object/from16 v18, v0

    check-cast v18, Lcom/vkontakte/android/LinkAttachment;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const v17, 0x7f0901c6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 343
    .end local v4    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 344
    .restart local v4    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v4, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v18, v0

    if-nez v18, :cond_1f

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 346
    const/4 v12, 0x1

    .line 347
    goto/16 :goto_6

    .line 348
    :cond_1f
    check-cast v4, Lcom/vkontakte/android/GeoAttachment;

    .end local v4    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/NewPostActivity;->attachLocation(Lcom/vkontakte/android/GeoAttachment;)V

    goto/16 :goto_6

    .line 359
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 452
    const v1, 0x7f08002c

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 453
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 454
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 455
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 948
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 950
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 459
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->onBackPressed()V

    .line 464
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 982
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 983
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity;->sendBtn:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/NewPostActivity$25;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewPostActivity$25;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    .line 988
    const-wide/16 v2, 0xc8

    .line 983
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 989
    return-void
.end method

.method public post()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 992
    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->attachView:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 994
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 999
    const/4 v4, 0x0

    .line 1000
    .local v4, "exportParam":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v7, :cond_9

    const-string v4, "twitter,facebook"

    .line 1003
    :cond_2
    :goto_1
    const v7, 0x7f0901c4

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\*((?:id|club)[0-9-]+) \\(([^\\)]+)\\)"

    const-string v9, "[$1|$2]"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1004
    .local v5, "ptext":Ljava/lang/String;
    new-instance v6, Lcom/vkontakte/android/APIRequest;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "edit"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v7, :cond_b

    const-string v7, ""

    :goto_2
    invoke-direct {v6, v7}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v6, "req":Lcom/vkontakte/android/APIRequest;
    const-string v7, "device"

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1006
    const-string v7, "owner_id"

    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1007
    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v7, :cond_3

    .line 1008
    const-string v7, "publish_date"

    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1011
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "edit"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1012
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "edit"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    .line 1013
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v7, :cond_d

    const-string v7, "comment_id"

    :goto_3
    iget v8, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1014
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->isComment:Z

    if-eqz v7, :cond_4

    .line 1015
    const-string v7, "method"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".editComment"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1016
    :cond_4
    move-object v3, v2

    .line 1020
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    .local v3, "edit":Lcom/vkontakte/android/NewsEntry;
    :goto_4
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v7, :cond_5

    .line 1021
    const-string v7, "from_group"

    invoke-virtual {v6, v7, v12}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1023
    :cond_5
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v7, :cond_f

    .line 1024
    const-string v7, "signed"

    invoke-virtual {v6, v7, v12}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 1028
    :cond_6
    :goto_5
    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    if-eqz v7, :cond_7

    .line 1029
    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget v7, v7, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-gtz v7, :cond_10

    .line 1030
    const-string v7, "lat"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v9, v9, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    const-string v8, "long"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v10, v10, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1035
    :cond_7
    :goto_6
    invoke-static {v1}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 1036
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_11

    .line 1037
    const-string v7, "attachments"

    const-string v8, ","

    invoke-static {v8, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1042
    :goto_7
    const-string v7, "message"

    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1043
    const-string v8, "friends_only"

    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v7, :cond_12

    const-string v7, "1"

    :goto_8
    invoke-virtual {v6, v8, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 1044
    const-string v7, "services"

    invoke-virtual {v6, v7, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 1045
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$26;

    invoke-direct {v8, p0, v5, v3, v1}, Lcom/vkontakte/android/NewPostActivity$26;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 1185
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 1186
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 994
    .end local v3    # "edit":Lcom/vkontakte/android/NewsEntry;
    .end local v4    # "exportParam":Ljava/lang/String;
    .end local v5    # "ptext":Ljava/lang/String;
    .end local v6    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 995
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v8, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v8, :cond_1

    goto/16 :goto_0

    .line 1001
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    .restart local v4    # "exportParam":Ljava/lang/String;
    :cond_9
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    if-eqz v7, :cond_a

    const-string v4, "twitter"

    goto/16 :goto_1

    .line 1002
    :cond_a
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    if-eqz v7, :cond_2

    const-string v4, "facebook"

    goto/16 :goto_1

    .line 1004
    .restart local v5    # "ptext":Ljava/lang/String;
    :cond_b
    const-string v7, "wall.edit"

    goto/16 :goto_2

    :cond_c
    const-string v7, "wall.post"

    goto/16 :goto_2

    .line 1013
    .restart local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v6    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_d
    const-string v7, "post_id"

    goto/16 :goto_3

    .line 1018
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "edit":Lcom/vkontakte/android/NewsEntry;
    goto/16 :goto_4

    .line 1025
    :cond_f
    iget-boolean v7, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v7, :cond_6

    .line 1026
    const-string v7, "signed"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_5

    .line 1032
    :cond_10
    const-string v7, "place_id"

    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->geoAttach:Lcom/vkontakte/android/GeoAttachment;

    iget v8, v8, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_6

    .line 1039
    :cond_11
    const-string v7, "attachments"

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_7

    .line 1043
    :cond_12
    const/4 v7, 0x0

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

    .line 616
    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-lez v8, :cond_9

    .line 617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v1, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v6, v13, [Z

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    aput-boolean v8, v6, v10

    .line 620
    .local v6, "opts":[Z
    new-array v3, v13, [Z

    fill-array-data v3, :array_0

    .line 621
    .local v3, "enabled":[Z
    const/4 v5, 0x1

    .line 622
    .local v5, "o":I
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f080200

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    const-string v8, "friendsonly"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v10}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "export_twitter_avail"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f080201

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v8, "twitter"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    aput-boolean v8, v6, v5

    .line 628
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v8, :cond_0

    aput-boolean v10, v3, v5

    .line 629
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 631
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v10}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "export_facebook_avail"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f080202

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v8, "fb"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    aput-boolean v8, v6, v5

    .line 635
    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v8, :cond_2

    aput-boolean v10, v3, v5

    .line 636
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 638
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

    .line 639
    :cond_5
    const v8, 0x7f0802f7

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v8, "timer"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_8

    move v8, v9

    :goto_0
    aput-boolean v8, v6, v5

    .line 642
    add-int/lit8 v5, v5, 0x1

    .line 645
    :cond_6
    new-instance v9, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 646
    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v10, Lcom/vkontakte/android/NewPostActivity$15;

    invoke-direct {v10, p0, v1, v3, v6}, Lcom/vkontakte/android/NewPostActivity$15;-><init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/ArrayList;[Z[Z)V

    invoke-virtual {v9, v8, v6, v10}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 677
    const v9, 0x7f080042

    new-instance v10, Lcom/vkontakte/android/NewPostActivity$16;

    invoke-direct {v10, p0, v6}, Lcom/vkontakte/android/NewPostActivity$16;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 693
    const v9, 0x7f0800a4

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 694
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 695
    .local v2, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    .line 696
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 697
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$17;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewPostActivity$17;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 759
    .end local v5    # "o":I
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/NewPostActivity$20;

    invoke-direct {v9, p0, v2, v3}, Lcom/vkontakte/android/NewPostActivity$20;-><init>(Lcom/vkontakte/android/NewPostActivity;Landroid/app/AlertDialog;[Z)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 769
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    .line 770
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 771
    new-instance v8, Lcom/vkontakte/android/NewPostActivity$21;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewPostActivity$21;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 777
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ArrayAdapter;

    .line 778
    .local v7, "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v0, Lcom/vkontakte/android/NewPostActivity$22;

    invoke-direct {v0, p0, v7, v3}, Lcom/vkontakte/android/NewPostActivity$22;-><init>(Lcom/vkontakte/android/NewPostActivity;Landroid/widget/ArrayAdapter;[Z)V

    .line 815
    .local v0, "a":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 816
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

    .line 641
    goto :goto_0

    .line 704
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

    .line 705
    new-array v6, v11, [Z

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    aput-boolean v8, v6, v10

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    aput-boolean v8, v6, v9

    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_d

    move v8, v9

    :goto_2
    aput-boolean v8, v6, v12

    .line 706
    .restart local v6    # "opts":[Z
    new-array v3, v11, [Z

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "public"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v10

    :goto_3
    aput-boolean v8, v3, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "public"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-nez v8, :cond_f

    move v8, v10

    :goto_4
    aput-boolean v8, v3, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "public"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-nez v8, :cond_10

    move v8, v10

    :goto_5
    aput-boolean v8, v3, v12

    .line 708
    .restart local v3    # "enabled":[Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .restart local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v8, 0x7f0800f8

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    const v8, 0x7f080131

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    const-string v8, "from_group"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    const-string v8, "signed"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "edit"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "edit"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    const/16 v11, 0x800

    invoke-virtual {v8, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v8

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/vkontakte/android/NewPostActivity;->isSuggest:Z

    if-eqz v8, :cond_c

    :cond_a
    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v11, Lcom/vkontakte/android/Global;->uid:I

    if-eq v8, v11, :cond_b

    iget v8, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gtz v8, :cond_c

    .line 716
    :cond_b
    const v8, 0x7f0802f7

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    const-string v8, "timer"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v8, p0, Lcom/vkontakte/android/NewPostActivity;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_11

    :goto_6
    aput-boolean v9, v6, v12

    .line 721
    :cond_c
    new-instance v9, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 722
    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 723
    new-instance v10, Lcom/vkontakte/android/NewPostActivity$18;

    invoke-direct {v10, p0, v3, v6}, Lcom/vkontakte/android/NewPostActivity$18;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z[Z)V

    .line 722
    invoke-virtual {v9, v8, v6, v10}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 746
    const v9, 0x7f080042

    new-instance v10, Lcom/vkontakte/android/NewPostActivity$19;

    invoke-direct {v10, p0, v6}, Lcom/vkontakte/android/NewPostActivity$19;-><init>(Lcom/vkontakte/android/NewPostActivity;[Z)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 756
    const v9, 0x7f0800a4

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 757
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 721
    .restart local v2    # "dlg":Landroid/app/AlertDialog;
    goto/16 :goto_1

    .end local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "dlg":Landroid/app/AlertDialog;
    .end local v3    # "enabled":[Z
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "opts":[Z
    :cond_d
    move v8, v10

    .line 705
    goto/16 :goto_2

    .restart local v6    # "opts":[Z
    :cond_e
    move v8, v9

    .line 706
    goto/16 :goto_3

    :cond_f
    move v8, v9

    goto/16 :goto_4

    :cond_10
    move v8, v9

    goto/16 :goto_5

    .restart local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "enabled":[Z
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    move v9, v10

    .line 718
    goto :goto_6

    .line 620
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
    .line 584
    invoke-virtual {p0}, Lcom/vkontakte/android/NewPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "locationProviders":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 586
    :cond_0
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    const v3, 0x7f0802d9

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 588
    const v3, 0x7f0802da

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 589
    const v3, 0x7f0802db

    new-instance v4, Lcom/vkontakte/android/NewPostActivity$14;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewPostActivity$14;-><init>(Lcom/vkontakte/android/NewPostActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 596
    const v3, 0x7f080041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 597
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget v2, p0, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_2

    const-class v2, Lcom/vkontakte/android/CheckInActivity;

    :goto_1
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 600
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-class v2, Lcom/vkontakte/android/SelectGeoPointActivity;

    goto :goto_1
.end method

.method public startMentionChooser()V
    .locals 4

    .prologue
    .line 605
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 606
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 607
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "FriendsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 610
    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    return-void
.end method
