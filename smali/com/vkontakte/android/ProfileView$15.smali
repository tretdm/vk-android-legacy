.class Lcom/vkontakte/android/ProfileView$15;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetFullProfile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->loadInitial(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfileView$15;)Lcom/vkontakte/android/ProfileView;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ProfileView;->onError(ILjava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 586
    return-void
.end method

.method public success(Lcom/vkontakte/android/api/ExtendedUserProfile;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "profile"    # Lcom/vkontakte/android/api/ExtendedUserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/api/ExtendedUserProfile;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const v11, 0x7f09017e

    const/4 v4, 0x4

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 488
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$22(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/PhotoFeedView;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    if-nez p1, :cond_0

    .line 494
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 496
    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 497
    const v2, 0x7f080042

    new-instance v3, Lcom/vkontakte/android/ProfileView$15$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ProfileView$15$1;-><init>(Lcom/vkontakte/android/ProfileView$15;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 503
    new-instance v2, Lcom/vkontakte/android/ProfileView$15$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileView$15$2;-><init>(Lcom/vkontakte/android/ProfileView$15;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 580
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-static {v0, v2}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 517
    iget-object v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    const-string v5, "gif"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v5, :cond_1

    .line 518
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f090177

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 520
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    if-lez v1, :cond_f

    move v1, v2

    :goto_1
    invoke-static {v5, v1}, Lcom/vkontakte/android/ProfileView;->access$24(Lcom/vkontakte/android/ProfileView;Z)V

    .line 521
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f09017d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$25(Lcom/vkontakte/android/ProfileView;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 522
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$25(Lcom/vkontakte/android/ProfileView;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 524
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1, p1}, Lcom/vkontakte/android/ProfileView;->access$26(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/api/ExtendedUserProfile;)V

    .line 525
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$27(Lcom/vkontakte/android/ProfileView;)V

    .line 526
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)V

    .line 527
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$29(Lcom/vkontakte/android/ProfileView;)V

    .line 528
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$19(Lcom/vkontakte/android/ProfileView;)V

    .line 529
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$22(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/PhotoFeedView;

    move-result-object v5

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v6

    iget-object v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v7, "photos"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v7, "photos"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    invoke-virtual {v5, p2, v6, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->init(Ljava/util/List;II)V

    .line 530
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    if-lez v1, :cond_12

    .line 531
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080134

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$22(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/PhotoFeedView;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_2
    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    if-gez v1, :cond_4

    iget v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v1, v10, :cond_4

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f09017d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 541
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f09017f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v1, :cond_13

    move v1, v3

    :goto_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v1, :cond_7

    :cond_5
    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v1, :cond_6

    iget v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v1, v10, :cond_8

    :cond_6
    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    if-gez v1, :cond_8

    .line 543
    :cond_7
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 545
    :cond_8
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    if-gez v1, :cond_9

    iget v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v1, v10, :cond_9

    .line 546
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 548
    :cond_9
    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v1, :cond_a

    iget v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v1, v10, :cond_b

    :cond_a
    iget-boolean v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    if-ltz v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v5, :cond_d

    .line 549
    :cond_c
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 550
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v5, :cond_14

    .line 551
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 554
    :goto_6
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 555
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 558
    :cond_d
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 559
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f090174

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090172

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 563
    :cond_e
    iget v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    if-gez v1, :cond_16

    .line 564
    iget v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_15

    .line 565
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x7f0801cd

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 569
    :goto_7
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v3}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 571
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, v1, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v4, 0x12c

    invoke-static {v1, v2, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 572
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, v1, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 573
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView;->updateList()V

    goto/16 :goto_0

    :cond_f
    move v1, v3

    .line 520
    goto/16 :goto_1

    :cond_10
    move v1, v2

    .line 521
    goto/16 :goto_2

    :cond_11
    move v1, v3

    .line 529
    goto/16 :goto_3

    .line 533
    :cond_12
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080134

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v8}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080103

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_13
    move v1, v4

    .line 541
    goto/16 :goto_5

    .line 553
    :cond_14
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 567
    :cond_15
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x7f0801ce

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 577
    :cond_16
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 578
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ProfileView;->loadData(Z)V

    .line 579
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$15;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView;->updateList()V

    goto/16 :goto_0
.end method
