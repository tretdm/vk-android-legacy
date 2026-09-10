.class Lcom/vkontakte/android/FriendsActivity$9;
.super Ljava/lang/Object;
.source "FriendsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesCreateChat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsActivity;->openOrCreateChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsActivity;

.field private final synthetic val$l:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsActivity$9;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/FriendsActivity$9;->val$l:Ljava/util/ArrayList;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 500
    return-void
.end method

.method public success(I)V
    .locals 13
    .param p1, "chatID"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 468
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v6, "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$9;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 470
    const-string v7, ", "

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "title":Ljava/lang/String;
    const v7, 0x77359400

    add-int/2addr p1, v7

    .line 472
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 473
    const-string v7, "M"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$9;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lt v2, v7, :cond_2

    .line 475
    const-string v7, "|"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "chatPhoto":Ljava/lang/String;
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 477
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 478
    iput-object v0, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 479
    iput p1, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 480
    new-instance v1, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 481
    .local v1, "de":Lcom/vkontakte/android/DialogEntry;
    iput v11, v1, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 482
    const-string v7, ""

    iput-object v7, v1, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    .line 483
    const-string v7, ""

    iput-object v7, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 484
    iput-boolean v9, v1, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    .line 485
    iput-boolean v12, v1, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 486
    iput-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 487
    iput-boolean v9, v1, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v1, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 489
    sget-object v7, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v7, v12, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 490
    sget-object v7, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 491
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v4, "res":Landroid/content/Intent;
    const-string v7, "profile"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 493
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$9;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-virtual {v7, v11, v4}, Lcom/vkontakte/android/FriendsActivity;->setResult(ILandroid/content/Intent;)V

    .line 494
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$9;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/FriendsActivity;->finish()V

    .line 495
    return-void

    .line 469
    .end local v0    # "chatPhoto":Ljava/lang/String;
    .end local v1    # "de":Lcom/vkontakte/android/DialogEntry;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "res":Landroid/content/Intent;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$9;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 474
    .restart local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$9;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method
