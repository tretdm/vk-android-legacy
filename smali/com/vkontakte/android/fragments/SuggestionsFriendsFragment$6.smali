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

.field private final synthetic val$service:Ljava/lang/String;

.field private final synthetic val$usrs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$usrs:Ljava/util/List;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    .line 415
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

    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f08006b

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    const-string v0, "phone"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$4(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Z)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$2(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 475
    return-void

    .line 470
    :cond_1
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
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
    .line 419
    .local p1, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 428
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 429
    const/4 v4, -0x1

    .line 430
    .local v4, "srv":I
    const-string v5, ""

    .line 431
    .local v5, "title":Ljava/lang/String;
    const-string v7, "phone"

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 432
    const/4 v4, 0x0

    .line 433
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v8, 0x7f08028f

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 444
    :cond_0
    :goto_1
    invoke-static {v4, p1, p2}, Lcom/vkontakte/android/data/Friends;->saveImportedContacts(ILjava/util/List;Ljava/util/List;)V

    .line 445
    const-string v7, "phone"

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "from_signup"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 446
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 449
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    .line 452
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 453
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$4(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Z)V

    .line 454
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$2(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 465
    :goto_4
    return-void

    .line 420
    .end local v4    # "srv":I
    .end local v5    # "title":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v7, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 421
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$usrs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 419
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 422
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 423
    invoke-virtual {p2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 434
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v4    # "srv":I
    .restart local v5    # "title":Ljava/lang/String;
    :cond_6
    const-string v7, "google"

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 435
    const/4 v4, 0x1

    .line 436
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v8, 0x7f080293

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 437
    goto :goto_1

    :cond_7
    const-string v7, "facebook"

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 438
    const/4 v4, 0x2

    .line 439
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v8, 0x7f080291

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 440
    goto/16 :goto_1

    :cond_8
    const-string v7, "email"

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 441
    const/4 v4, 0x3

    .line 442
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const v8, 0x7f080295

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 446
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 447
    .local v6, "user":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v6, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 449
    .end local v6    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 450
    .restart local v6    # "user":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v6, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 456
    .end local v6    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_c

    if-eqz v4, :cond_c

    const/4 v7, 0x3

    if-eq v4, v7, :cond_c

    .line 457
    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0800bf

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 460
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "service"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    const-string v7, "title"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v7, "SuggestionsImportedFragment"

    iget-object v8, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_4
.end method
