.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "GroupInvitationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendRequestsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 3
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/GroupInvitation;

    iget-object v1, v1, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v1, v1, Lcom/vkontakte/android/api/Group;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    .line 382
    :goto_0
    return-wide v1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "x":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 363
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f09009b

    const v6, 0x7f090021

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v5, 0x7f0900d7

    .line 296
    if-nez p3, :cond_0

    .line 297
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030045

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 298
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "add"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "unsure"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v2, 0x7f09009c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "decline"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    const v2, 0x7f09009c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 305
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 306
    const v2, 0x7f09009c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/GroupInvitation;

    .line 311
    .local v1, "req":Lcom/vkontakte/android/api/GroupInvitation;
    const v2, 0x7f0900c9

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget-object v3, v3, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, v1, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v2, v2, Lcom/vkontakte/android/api/Group;->type:I

    if-ne v2, v8, :cond_4

    .line 313
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 314
    const v2, 0x7f0900d6

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0801e0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 321
    :goto_0
    const v2, 0x7f0900ca

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08019a

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/vkontakte/android/api/GroupInvitation;->inviter:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v2, 0x7f0900cc

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0053

    iget v4, v1, Lcom/vkontakte/android/api/GroupInvitation;->size:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    const v2, 0x7f0900d2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 326
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 327
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 328
    iget v2, v1, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    packed-switch v2, :pswitch_data_0

    .line 341
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040008

    invoke-virtual {v0, v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 342
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040009

    invoke-virtual {v0, v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 343
    iget v2, v1, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 344
    :cond_1
    const v2, 0x7f0900d5

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800e9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 346
    :cond_2
    iget v2, v1, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 347
    const v2, 0x7f0900d5

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 350
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v1, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget-object v3, v3, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 351
    const v2, 0x7f0900c8

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v1, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget-object v4, v4, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    :goto_2
    iget-object v2, v1, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v2, v2, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 357
    return-object p3

    .line 316
    .end local v0    # "flipper":Landroid/widget/ViewFlipper;
    :cond_4
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 317
    const v2, 0x7f0900d6

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0801de

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 330
    .restart local v0    # "flipper":Landroid/widget/ViewFlipper;
    :pswitch_0
    invoke-virtual {v0, v7}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_1

    .line 333
    :pswitch_1
    invoke-virtual {v0, v8}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_1

    .line 338
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_1

    .line 353
    :cond_5
    const v2, 0x7f0900c8

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200e3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method
