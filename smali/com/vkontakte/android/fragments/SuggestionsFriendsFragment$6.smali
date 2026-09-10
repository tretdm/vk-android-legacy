.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountLookupContacts$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

.field final synthetic val$service:Ljava/lang/String;

.field final synthetic val$usrs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$usrs:Ljava/util/List;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f0d00ce

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 469
    const-string v0, "phone"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$802(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Z)Z

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 473
    return-void

    .line 468
    :cond_1
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 418
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v8, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 419
    .local v3, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$usrs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 420
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v8, v4, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 421
    invoke-virtual {p2, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 427
    const/4 v5, -0x1

    .line 428
    .local v5, "srv":I
    const-string v6, ""

    .line 429
    .local v6, "title":Ljava/lang/String;
    const-string v8, "phone"

    iget-object v9, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 430
    const/4 v5, 0x0

    .line 431
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v9, 0x7f0d030f

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 442
    :cond_3
    :goto_1
    invoke-static {v5, p1, p2}, Lcom/vkontakte/android/data/Friends;->saveImportedContacts(ILjava/util/List;Ljava/util/List;)V

    .line 443
    const-string v8, "phone"

    iget-object v9, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "from_signup"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 444
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 445
    .local v7, "user":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v7, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 432
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_5
    const-string v8, "google"

    iget-object v9, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 433
    const/4 v5, 0x1

    .line 434
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v9, 0x7f0d0317

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 435
    :cond_6
    const-string v8, "facebook"

    iget-object v9, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 436
    const/4 v5, 0x2

    .line 437
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v9, 0x7f0d0313

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 438
    :cond_7
    const-string v8, "email"

    iget-object v9, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 439
    const/4 v5, 0x3

    .line 440
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v9, 0x7f0d0315

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 447
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 448
    .restart local v7    # "user":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v7, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 450
    .end local v7    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_a
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 451
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$802(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Z)Z

    .line 452
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 463
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    return-void

    .line 454
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_c

    if-eqz v5, :cond_c

    const/4 v8, 0x3

    if-eq v5, v8, :cond_c

    .line 455
    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0d01b8

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 458
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "service"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v8, "title"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v8, "SuggestionsImportedFragment"

    iget-object v9, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_4
.end method
