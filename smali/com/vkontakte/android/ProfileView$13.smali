.class Lcom/vkontakte/android/ProfileView$13;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetFullProfile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->loadInitial()V
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
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfileView$13;)Lcom/vkontakte/android/ProfileView;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ProfileView;->onError(ILjava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 522
    return-void
.end method

.method public success(Lcom/vkontakte/android/api/ExtendedUserProfile;Ljava/util/ArrayList;)V
    .locals 11
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
    const v10, 0x7f080131

    const/4 v3, 0x4

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    const v1, 0x7f0601fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 441
    const v1, 0x7f060028

    new-instance v2, Lcom/vkontakte/android/ProfileView$13$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileView$13$1;-><init>(Lcom/vkontakte/android/ProfileView$13;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 447
    new-instance v1, Lcom/vkontakte/android/ProfileView$13$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$13$2;-><init>(Lcom/vkontakte/android/ProfileView$13;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 516
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_1
    invoke-static {v4, v0}, Lcom/vkontakte/android/ProfileView;->access$20(Lcom/vkontakte/android/ProfileView;Z)V

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f080130

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$22(Lcom/vkontakte/android/ProfileView;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$22(Lcom/vkontakte/android/ProfileView;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 460
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0, p1}, Lcom/vkontakte/android/ProfileView;->access$23(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/api/ExtendedUserProfile;)V

    .line 461
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$24(Lcom/vkontakte/android/ProfileView;)V

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$25(Lcom/vkontakte/android/ProfileView;)V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$26(Lcom/vkontakte/android/ProfileView;)V

    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$19(Lcom/vkontakte/android/ProfileView;)V

    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$27(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/PhotoFeedView;

    move-result-object v4

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v5

    iget-object v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v6, "photos"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v6, "photos"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    invoke-virtual {v4, p2, v5, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init(Ljava/util/List;II)V

    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-lez v0, :cond_11

    .line 467
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06011b

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$27(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/PhotoFeedView;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 473
    :cond_1
    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-gez v0, :cond_3

    iget v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v9, :cond_3

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f080130

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f080132

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v0, :cond_12

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v9, :cond_7

    :cond_5
    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-gez v0, :cond_7

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 481
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-gez v0, :cond_8

    iget v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v9, :cond_8

    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 484
    :cond_8
    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v9, :cond_a

    :cond_9
    iget-boolean v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    if-ltz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v4, :cond_c

    .line 485
    :cond_b
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v4, :cond_13

    .line 487
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 490
    :goto_6
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$29(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 491
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$29(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$29(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$29(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$29(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 494
    :cond_c
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f080126

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080124

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 499
    :cond_d
    iget v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    if-gez v0, :cond_15

    .line 500
    iget v0, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f0601b4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 505
    :goto_7
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v2}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 507
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v3, 0x12c

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 509
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->updateList()V

    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 456
    goto/16 :goto_1

    :cond_f
    move v0, v1

    .line 457
    goto/16 :goto_2

    :cond_10
    move v0, v2

    .line 465
    goto/16 :goto_3

    .line 469
    :cond_11
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06011b

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_12
    move v0, v3

    .line 477
    goto/16 :goto_5

    .line 489
    :cond_13
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 503
    :cond_14
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f0601b5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 513
    :cond_15
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkontakte/android/ProfileView;->access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V

    .line 514
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileView;->loadData(Z)V

    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->updateList()V

    goto/16 :goto_0
.end method
