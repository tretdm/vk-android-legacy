.class public Lcom/vkontakte/android/WallView;
.super Lcom/vkontakte/android/NewsView;
.source "WallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/WallView$OnDataLoadedListener;,
        Lcom/vkontakte/android/WallView$WallAdapter;,
        Lcom/vkontakte/android/WallView$WallPhotosAdapter;
    }
.end annotation


# instance fields
.field private audioStatus:Lcom/vkontakte/android/AudioFile;

.field private btnHideAnim:Landroid/view/animation/Animation;

.field private btnShowAnim:Landroid/view/animation/Animation;

.field private canPost:Z

.field private counterClickListener:Landroid/view/View$OnClickListener;

.field private counters:[I

.field private f:Z

.field private groupClosed:Z

.field private groupMember:Z

.field private groupRequest:Z

.field private groupType:I

.field private headerInfoView:Landroid/view/View;

.field private headerView:Landroid/view/View;

.field private headerView2:Landroid/view/View;

.field private info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infoClickListener:Landroid/view/View$OnClickListener;

.field private infoLayout:Landroid/widget/LinearLayout;

.field private infoView:Landroid/widget/ScrollView;

.field private listener:Lcom/vkontakte/android/WallView$OnDataLoadedListener;

.field private name:[Ljava/lang/String;

.field private photoViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private photos:[Lcom/vkontakte/android/Photo;

.field private relationID:I

.field private removeFriendBtn:Landroid/widget/Button;

.field private removeFriendPanel:Landroid/widget/LinearLayout;

.field private showAllPosts:Z

.field private showProfile:Z

.field private statusInfoView:Landroid/view/View;

.field private uploadPhotoBtn:Landroid/widget/Button;

.field private userName:Ljava/lang/String;

.field private userPhoto:Ljava/lang/String;

.field private userStatus:Ljava/lang/String;

.field private wallID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    .line 55
    iput v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/WallView;->listener:Lcom/vkontakte/android/WallView$OnDataLoadedListener;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/WallView;->photoViews:Ljava/util/Vector;

    .line 60
    new-array v0, v1, [Lcom/vkontakte/android/Photo;

    iput-object v0, p0, Lcom/vkontakte/android/WallView;->photos:[Lcom/vkontakte/android/Photo;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/WallView;->showProfile:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/WallView;->f:Z

    .line 76
    iput-boolean v2, p0, Lcom/vkontakte/android/WallView;->showAllPosts:Z

    .line 78
    iput v1, p0, Lcom/vkontakte/android/WallView;->relationID:I

    .line 84
    iput p2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->init()V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->noNewsView:Landroid/widget/TextView;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WallView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/vkontakte/android/WallView;->wallID:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/vkontakte/android/WallView;->openProfilePhotos()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/WallView;)Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/WallView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/WallView;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vkontakte/android/WallView;->relationID:I

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/WallView;)Lcom/vkontakte/android/WallView$OnDataLoadedListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->listener:Lcom/vkontakte/android/WallView$OnDataLoadedListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/WallView;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Lcom/vkontakte/android/Photo;[ILjava/util/HashMap;)V
    .locals 0

    .prologue
    .line 577
    invoke-direct/range {p0 .. p10}, Lcom/vkontakte/android/WallView;->fillData([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Lcom/vkontakte/android/Photo;[ILjava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/WallView;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->groupClosed:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/WallView;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->groupRequest:Z

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/WallView;)[Lcom/vkontakte/android/Photo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->photos:[Lcom/vkontakte/android/Photo;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/WallView;)[I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->counters:[I

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/WallView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/WallView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/WallView;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/WallView;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->canPost:Z

    return v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/WallView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/WallView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->photoViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/WallView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->removeFriendPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/WallView;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vkontakte/android/WallView;->groupRequest:Z

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/WallView;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/vkontakte/android/WallView;->groupType:I

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/WallView;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vkontakte/android/WallView;->groupMember:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/WallView;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->showAllPosts:Z

    return v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/WallView;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->f:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/WallView;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/vkontakte/android/WallView;->showAllPosts:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/WallView;Z)V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WallView;->setAllPostsSelected(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/WallView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/WallView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->name:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/WallView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    return-object v0
.end method

.method private displayPhotos([Lcom/vkontakte/android/Photo;)V
    .locals 12
    .param p1, "photos"    # [Lcom/vkontakte/android/Photo;

    .prologue
    const v11, 0x7f0600f7

    const/4 v6, 0x0

    const/high16 v10, 0x428a0000    # 69.0f

    .line 865
    iput-object p1, p0, Lcom/vkontakte/android/WallView;->photos:[Lcom/vkontakte/android/Photo;

    .line 866
    array-length v4, p1

    if-nez v4, :cond_0

    .line 867
    iget-object v4, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 869
    :cond_0
    new-instance v1, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v1}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 870
    .local v1, "ldr":Lcom/vkontakte/android/ImageLoader;
    array-length v7, p1

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 895
    invoke-direct {p0}, Lcom/vkontakte/android/WallView;->updateVisiblePhotos()V

    .line 896
    invoke-virtual {v1}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 897
    return-void

    .line 870
    :cond_1
    aget-object v2, p1, v5

    .line 871
    .local v2, "p":Lcom/vkontakte/android/Photo;
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 872
    .local v0, "img":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 873
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 874
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    const v4, 0x7f0201e8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 879
    const v4, 0x7f0201e9

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 880
    iget-object v4, v2, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 881
    iget-object v4, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 882
    iget-object v4, p0, Lcom/vkontakte/android/WallView;->photoViews:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 883
    const-wide/16 v8, 0x0

    invoke-virtual {v1, v0, v6, v8, v9}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 884
    new-instance v4, Lcom/vkontakte/android/WallView$18;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/WallView$18;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0
.end method

.method private fillData([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Lcom/vkontakte/android/Photo;[ILjava/util/HashMap;)V
    .locals 20
    .param p1, "name"    # [Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "subtext1"    # Ljava/lang/String;
    .param p4, "subtext2"    # Ljava/lang/String;
    .param p5, "online"    # Z
    .param p6, "canWrite"    # Z
    .param p7, "_isAdmin"    # Z
    .param p8, "photos"    # [Lcom/vkontakte/android/Photo;
    .param p9, "_counters"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ[",
            "Lcom/vkontakte/android/Photo;",
            "[I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p10, "_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/WallView;->isAdmin:Z

    .line 580
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/WallView;->counters:[I

    .line 581
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/WallView;->canPost:Z

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v13

    instance-of v13, v13, Lcom/vkontakte/android/WallActivity;

    if-eqz v13, :cond_0

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/WallActivity;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    iput-object v14, v13, Lcom/vkontakte/android/WallActivity;->userName:Ljava/lang/String;

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/WallActivity;

    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/vkontakte/android/WallActivity;->userPhoto:Ljava/lang/String;

    .line 587
    :cond_0
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    .line 588
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/WallView;->name:[Ljava/lang/String;

    .line 589
    const/4 v13, 0x0

    aget-object v13, p1, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/WallView;->userName:Ljava/lang/String;

    .line 590
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/WallView;->userPhoto:Ljava/lang/String;

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f0600e7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f0600e7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSelected(Z)V

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f0600e7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f0600e7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSelected(Z)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1a

    .line 596
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 601
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 608
    :cond_1
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1b

    .line 609
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060110

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060110

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f0600e9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz p5, :cond_1c

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f0600e9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz p5, :cond_1d

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/vkontakte/android/WallView;->displayPhotos([Lcom/vkontakte/android/Photo;)V

    .line 620
    if-nez p6, :cond_2

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v14, 0x7f060116

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v14, 0x7f060115

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v14, 0x7f060112

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 626
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f06010c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f06010c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 628
    new-instance v14, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v14}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v15, 0x7f06010c

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0, v1}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v14

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v15, 0x7f06010c

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0, v1}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v13

    .line 631
    invoke-virtual {v13}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 633
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->counters:[I

    array-length v13, v13

    if-lt v7, v13, :cond_1e

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 648
    .local v3, "_infoKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 649
    .local v8, "infoKeys":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v13, "bdate"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "bdate"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_3
    const-string v13, "relation"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "relation"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_4
    const-string v13, "education"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "education"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_5
    const-string v13, "faculty"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "faculty"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_6
    const-string v13, "hphone"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "hphone"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_7
    const-string v13, "mphone"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "mphone"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_8
    const-string v13, "description"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "description"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_9
    const-string v13, "site"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "site"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_a
    const-string v13, "place"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "place"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_b
    const-string v13, "start_date"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "start_date"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_c
    const-string v13, "end_date"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "end_date"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_d
    const-string v13, "activity"

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v14, Lcom/vkontakte/android/Global;->uid:I

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    if-nez v13, :cond_f

    :cond_e
    const-string v13, "activity"

    invoke-virtual {v8, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v14, "_audio_aid"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 663
    new-instance v13, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v13}, Lcom/vkontakte/android/AudioFile;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "_audio_aid"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v14, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "_audio_oid"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v14, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "_audio_duration"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v14, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "_audio_artist"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "_audio_title"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 669
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "_audio_url"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    const-string v14, "%d:%02d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    .line 673
    :cond_10
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_24

    .line 738
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/WallView;->loadData(Z)V

    .line 740
    const v13, 0x7f060114

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/WallView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090175

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_36

    const/4 v14, 0x2

    aget-object v14, p1, v14

    :goto_6
    aput-object v14, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/WallView;->showAllPosts:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkontakte/android/WallView;->setAllPostsSelected(Z)V

    .line 742
    const-string v13, "0"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "_can_see_all_posts"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 744
    const v13, 0x7f060113

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/WallView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 745
    const v13, 0x7f060114

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/WallView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    .line 746
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v14, 0x7f060112

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 749
    :cond_11
    const-string v13, "0"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "is_closed"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/WallView;->groupClosed:Z

    .line 750
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v14, "is_member"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/WallView;->groupMember:Z

    .line 751
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v14, "_f"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/WallView;->f:Z

    .line 753
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v14, Lcom/vkontakte/android/Global;->uid:I

    if-eq v13, v14, :cond_12

    const-string v13, "2"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "is_closed"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 754
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 758
    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    if-gez v13, :cond_3b

    .line 759
    const v12, 0x7f090165

    .line 760
    .local v12, "title":I
    const-string v13, "page"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "type"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const v12, 0x7f090168

    .line 762
    :cond_14
    const-string v13, "page"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "type"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/WallView;->groupType:I

    .line 767
    :goto_8
    const-string v13, "1"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "is_closed"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 768
    const-string v13, "1"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "request"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 769
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/WallView;->groupRequest:Z

    .line 770
    const v12, 0x7f09017d

    .line 775
    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(I)V

    .line 777
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->isFriend()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :cond_16
    new-instance v10, Lcom/vkontakte/android/WallView$15;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/vkontakte/android/WallView$15;-><init>(Lcom/vkontakte/android/WallView;)V

    .line 790
    .local v10, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    .end local v12    # "title":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->removeFriendBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    if-lez v13, :cond_3c

    const v13, 0x7f0900f4

    :goto_b
    invoke-virtual {v14, v13}, Landroid/widget/Button;->setText(I)V

    .line 809
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 810
    .local v11, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 811
    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->removeFriendBtn:Landroid/widget/Button;

    invoke-virtual {v13, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/WallView;->removeFriendPanel:Landroid/widget/LinearLayout;

    .line 814
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->removeFriendPanel:Landroid/widget/LinearLayout;

    const v14, 0x7f020041

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->removeFriendPanel:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->removeFriendBtn:Landroid/widget/Button;

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->removeFriendPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->removeFriendBtn:Landroid/widget/Button;

    new-instance v14, Lcom/vkontakte/android/WallView$17;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/WallView$17;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    sget v13, Lcom/vkontakte/android/Global;->uid:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/WallView;->wallID:I

    if-eq v13, v14, :cond_3e

    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->isFriend()Z

    move-result v13

    if-nez v13, :cond_3e

    .line 825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->removeFriendPanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 832
    :cond_17
    :goto_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    if-gez v13, :cond_18

    .line 833
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f0600ef

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f0600ef

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 837
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    if-eqz v13, :cond_19

    .line 838
    const-string v13, "gif"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->btnShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 843
    :cond_19
    :goto_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    invoke-static {v13}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 844
    return-void

    .line 605
    .end local v3    # "_infoKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v8    # "infoKeys":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v10    # "listener":Landroid/view/View$OnClickListener;
    .end local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 612
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060110

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060110

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 615
    :cond_1c
    const/16 v13, 0x8

    goto/16 :goto_2

    .line 616
    :cond_1d
    const/16 v13, 0x8

    goto/16 :goto_3

    .line 634
    .restart local v7    # "i":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->counters:[I

    aget v13, v13, v7

    if-eqz v13, :cond_1f

    const/16 v13, 0x9

    if-ne v7, v13, :cond_20

    .line 633
    :cond_1f
    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 635
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f030031

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/vkontakte/android/WallView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 636
    .local v5, "cv":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0020

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    aget-object v4, v13, v7

    .line 637
    .local v4, "ct":Ljava/lang/String;
    const/16 v13, 0xd

    if-ne v7, v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v14, "_wiki_page"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ct":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 638
    .restart local v4    # "ct":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_22

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget-object v15, p1, v15

    aput-object v15, v13, v14

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 639
    :cond_22
    const v13, 0x7f060108

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    const v13, 0x7f060109

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/WallView;->counters:[I

    aget v15, v15, v7

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->counters:[I

    aget v13, v13, v7

    const/4 v14, -0x1

    if-ne v13, v14, :cond_23

    const v13, 0x7f060109

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->counterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_e

    .line 673
    .end local v4    # "ct":Ljava/lang/String;
    .end local v5    # "cv":Landroid/view/View;
    .restart local v3    # "_infoKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "infoKeys":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_24
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 674
    .local v9, "k":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f030034

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v0}, Lcom/vkontakte/android/WallView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 675
    .restart local v5    # "cv":Landroid/view/View;
    move-object v12, v9

    .line 676
    .local v12, "title":Ljava/lang/String;
    const v13, 0x7f060119

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    const-string v13, "bdate"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090085

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 678
    :cond_25
    const-string v13, "relation"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 679
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090086

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 680
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v14, "_relation_id"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v14, "_relation_id"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/WallView;->relationID:I

    .line 682
    const-string v13, "relation"

    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    :cond_26
    const-string v13, "education"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090087

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 687
    :cond_27
    const-string v13, "faculty"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090088

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 688
    :cond_28
    const-string v13, "site"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 689
    const-string v13, "site"

    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901b6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 693
    :cond_29
    const-string v13, "place"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v14, "place_coord"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 695
    const-string v13, "place"

    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    :cond_2a
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901b9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 700
    :cond_2b
    const-string v13, "description"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 701
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901b5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 702
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\n"

    const-string v16, "<br/>"

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 704
    .local v6, "h":Ljava/lang/CharSequence;
    :try_start_0
    move-object v0, v6

    check-cast v0, Landroid/text/Spannable;

    move-object v13, v0

    invoke-static {v13}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 706
    :goto_f
    const v13, 0x7f060119

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    const v13, 0x7f060119

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f080008

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 708
    const v13, 0x7f060119

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f080008

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 709
    const v13, 0x7f060119

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 711
    .end local v6    # "h":Ljava/lang/CharSequence;
    :cond_2c
    const-string v13, "start_date"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901b7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 712
    :cond_2d
    const-string v13, "end_date"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0901b8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 713
    :cond_2e
    const-string v13, "hphone"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 714
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09008a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 715
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v13, "phone"

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    :cond_2f
    const-string v13, "mphone"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 719
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09008b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 720
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v13, "phone"

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    :cond_30
    const-string v13, "activity"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 724
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090089

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 725
    const-string v13, "status"

    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 726
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    if-eqz v13, :cond_31

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v14, Lcom/vkontakte/android/Global;->uid:I

    if-eq v13, v14, :cond_31

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->audioStatus:Lcom/vkontakte/android/AudioFile;

    if-eqz v13, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    :cond_32
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    .line 728
    const v13, 0x7f060119

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f09009f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 729
    const v13, 0x7f060119

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f080006

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 731
    :cond_33
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkontakte/android/WallView;->statusInfoView:Landroid/view/View;

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    :goto_10
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/WallView;->userStatus:Ljava/lang/String;

    .line 734
    :cond_34
    const v13, 0x7f060118

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->infoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 732
    :cond_35
    const-string v13, ""

    goto :goto_10

    .line 740
    .end local v5    # "cv":Landroid/view/View;
    .end local v9    # "k":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v19, 0x7f09011b

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_6

    .line 749
    :cond_37
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 763
    .local v12, "title":I
    :cond_38
    const-string v13, "event"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v15, "type"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_39

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/WallView;->groupType:I

    goto/16 :goto_8

    .line 764
    :cond_39
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/WallView;->groupType:I

    goto/16 :goto_8

    .line 772
    :cond_3a
    const v12, 0x7f090167

    goto/16 :goto_9

    .line 793
    .end local v12    # "title":I
    :cond_3b
    new-instance v10, Lcom/vkontakte/android/WallView$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v10, v0, v1, v2}, Lcom/vkontakte/android/WallView$16;-><init>(Lcom/vkontakte/android/WallView;[Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .restart local v10    # "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f060111

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    .line 808
    :cond_3c
    const-string v13, "page"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/WallView;->info:Ljava/util/HashMap;

    const-string v16, "type"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    const v13, 0x7f090169

    goto/16 :goto_b

    :cond_3d
    const v13, 0x7f090166

    goto/16 :goto_b

    .line 827
    .restart local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v14, 0x7f0600ef

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v14, 0x7f0600ef

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 829
    sget v13, Lcom/vkontakte/android/Global;->uid:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/WallView;->wallID:I

    if-ne v13, v14, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->removeFriendPanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_c

    .line 841
    :cond_3f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d

    .line 705
    .end local v10    # "listener":Landroid/view/View$OnClickListener;
    .end local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "cv":Landroid/view/View;
    .restart local v6    # "h":Ljava/lang/CharSequence;
    .restart local v9    # "k":Ljava/lang/String;
    .local v12, "title":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto/16 :goto_f
.end method

.method private isFriend()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 230
    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-gez v2, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/WallView;->groupMember:Z

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    sget-object v2, Lcom/vkontakte/android/Global;->friendHints:[I

    if-eqz v2, :cond_0

    .line 232
    sget-object v3, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .local v0, "u":I
    iget v5, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-ne v5, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private openProfilePhotos()V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    const/4 v2, -0x6

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGet;-><init>(II)V

    .line 238
    new-instance v1, Lcom/vkontakte/android/WallView$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$9;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 263
    return-void
.end method

.method private setAllPostsSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    const v2, 0x7f060114

    const v3, 0x7f060113

    const/high16 v1, 0x3f000000    # 0.5f

    .line 847
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 848
    .local v0, "a":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 849
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/WallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 850
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/WallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 851
    return-void

    :cond_0
    move v1, v3

    .line 849
    goto :goto_0

    :cond_1
    move v3, v2

    .line 850
    goto :goto_1
.end method

.method private showUploadBtn(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vkontakte/android/WallView;->btnShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1069
    :goto_0
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vkontakte/android/WallView;->btnHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1065
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    new-instance v1, Lcom/vkontakte/android/WallView$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$21;-><init>(Lcom/vkontakte/android/WallView;)V

    .line 1067
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->btnHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 1065
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateVisiblePhotos()V
    .locals 4

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getWidth()I

    move-result v2

    const/high16 v3, 0x429a0000    # 77.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    div-int v1, v2, v3

    .line 901
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->photoViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 904
    return-void

    .line 902
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->photoViews:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ge v0, v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_1
    const/16 v3, 0x8

    goto :goto_1
.end method


# virtual methods
.method public addFriendDlg()V
    .locals 14

    .prologue
    const v8, 0x1080027

    const/high16 v10, 0x40e00000    # 7.0f

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 1094
    iget v6, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-lez v6, :cond_2

    .line 1095
    invoke-direct {p0}, Lcom/vkontakte/android/WallView;->isFriend()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1096
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1097
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v6, p0, Lcom/vkontakte/android/WallView;->f:Z

    if-eqz v6, :cond_0

    const v6, 0x7f09008f

    :goto_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkontakte/android/WallView;->name:[Ljava/lang/String;

    aget-object v8, v8, v12

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1099
    .local v3, "msgField":Landroid/widget/EditText;
    const v6, 0x7f090090

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 1100
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1101
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1102
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1104
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1105
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v6, v10

    float-to-int v4, v6

    .line 1106
    .local v4, "padding":I
    mul-int/lit8 v6, v4, 0x2

    mul-int/lit8 v7, v4, 0x2

    invoke-virtual {v1, v6, v4, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1107
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1108
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1109
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1110
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1111
    const v7, 0x7f0901c2

    new-instance v8, Lcom/vkontakte/android/WallView$23;

    invoke-direct {v8, p0, v3}, Lcom/vkontakte/android/WallView$23;-><init>(Lcom/vkontakte/android/WallView;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1117
    const v7, 0x7f09001c

    invoke-virtual {v6, v7, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1118
    const v7, 0x7f09008d

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1119
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1120
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1161
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "msgField":Landroid/widget/EditText;
    .end local v4    # "padding":I
    .end local v5    # "tv":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 1097
    .restart local v5    # "tv":Landroid/widget/TextView;
    :cond_0
    const v6, 0x7f09008e

    goto/16 :goto_0

    .line 1122
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1123
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1124
    const v7, 0x7f0900f4

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1125
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900f5

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/vkontakte/android/WallView;->name:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1126
    const v7, 0x7f090030

    new-instance v8, Lcom/vkontakte/android/WallView$24;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/WallView$24;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1132
    const v7, 0x7f090031

    invoke-virtual {v6, v7, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1133
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1136
    :cond_2
    iget-boolean v6, p0, Lcom/vkontakte/android/WallView;->groupMember:Z

    if-eqz v6, :cond_4

    .line 1137
    iget-boolean v6, p0, Lcom/vkontakte/android/WallView;->groupClosed:Z

    if-eqz v6, :cond_3

    .line 1138
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1139
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1140
    const v7, 0x7f090166

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1141
    const v7, 0x7f09016a

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1142
    const v7, 0x7f090030

    new-instance v8, Lcom/vkontakte/android/WallView$25;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/WallView$25;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1148
    const v7, 0x7f090031

    invoke-virtual {v6, v7, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1149
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1151
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->doLeaveGroup()V

    goto/16 :goto_1

    .line 1157
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->doJoinGroup()V

    goto/16 :goto_1
.end method

.method protected addHeaderViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v4, -0x2

    const v6, 0x7f06010d

    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030032

    invoke-static {v2, v3, v5}, Lcom/vkontakte/android/WallView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v7, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030032

    invoke-static {v2, v3, v5}, Lcom/vkontakte/android/WallView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    .line 93
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v7, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030033

    invoke-static {v2, v3, v5}, Lcom/vkontakte/android/WallView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v7, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v3, 0x7f060117

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v3, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    invoke-virtual {v2, v3, v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 100
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v3, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    invoke-virtual {v2, v3, v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030030

    invoke-static {v2, v3, v5}, Lcom/vkontakte/android/WallView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vkontakte/android/WallView;->removeFriendBtn:Landroid/widget/Button;

    .line 103
    new-instance v0, Lcom/vkontakte/android/WallView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/WallView$1;-><init>(Lcom/vkontakte/android/WallView;)V

    .line 110
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v3, 0x7f06010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v3, 0x7f06010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v3, 0x7f0600ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/WallView$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallView$2;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v3, 0x7f0600ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/WallView$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallView$3;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v0, Lcom/vkontakte/android/WallView$4;

    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    invoke-direct {v0, p0}, Lcom/vkontakte/android/WallView$4;-><init>(Lcom/vkontakte/android/WallView;)V

    .line 139
    .restart local v0    # "listener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v3, Lcom/vkontakte/android/WallView$WallAdapter;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallView$WallAdapter;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v3, Lcom/vkontakte/android/WallView$WallPhotosAdapter;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallView$WallPhotosAdapter;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 169
    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-lez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_2

    .line 174
    :cond_1
    new-instance v1, Lcom/vkontakte/android/WallView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$5;-><init>(Lcom/vkontakte/android/WallView;)V

    .line 182
    .local v1, "llistener":Landroid/view/View$OnLongClickListener;
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    .end local v1    # "llistener":Landroid/view/View$OnLongClickListener;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v3, 0x7f060112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/WallView$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallView$6;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_5

    .line 201
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v3, 0x7f060116

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/WallView$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallView$7;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :goto_0
    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_4

    :cond_3
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wall_show_all_posts"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkontakte/android/WallView;->showAllPosts:Z

    .line 227
    :cond_4
    return-void

    .line 210
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerView2:Landroid/view/View;

    const v3, 0x7f060116

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/WallView$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallView$8;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public doAddFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1270
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "friends.add"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1271
    const-string v1, "uid"

    iget v2, p0, Lcom/vkontakte/android/WallView;->wallID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1272
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1273
    new-instance v1, Lcom/vkontakte/android/WallView$29;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$29;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1304
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1305
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1306
    return-void
.end method

.method public doDeleteFriend()V
    .locals 2

    .prologue
    .line 1228
    new-instance v0, Lcom/vkontakte/android/api/FriendsDelete;

    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    .line 1229
    new-instance v1, Lcom/vkontakte/android/WallView$28;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$28;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1265
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1266
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1267
    return-void
.end method

.method public doJoinGroup()V
    .locals 2

    .prologue
    .line 1193
    new-instance v0, Lcom/vkontakte/android/api/GroupsJoin;

    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(I)V

    .line 1194
    new-instance v1, Lcom/vkontakte/android/WallView$27;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$27;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1223
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1224
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1225
    return-void
.end method

.method public doLeaveGroup()V
    .locals 2

    .prologue
    .line 1165
    new-instance v0, Lcom/vkontakte/android/api/GroupsLeave;

    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    .line 1166
    new-instance v1, Lcom/vkontakte/android/WallView$26;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$26;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1188
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1189
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1190
    return-void
.end method

.method public getPhotoByID(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->photoViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1344
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1337
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->photos:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    if-ne v2, p1, :cond_1

    .line 1338
    iget-object v2, p0, Lcom/vkontakte/android/WallView;->photoViews:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1339
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 1340
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 1336
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected init()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    .line 266
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->init()V

    .line 267
    const/high16 v1, 0x42d40000    # 106.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/WallView;->setEmptyPadding(I)V

    .line 269
    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 270
    :cond_0
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    .line 271
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    const v2, 0x7f090159

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 272
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 274
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 276
    const/high16 v1, 0x42b60000    # 91.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 277
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    const v2, 0x7f0201eb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    new-instance v2, Lcom/vkontakte/android/WallView$10;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/WallView$10;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/WallView;->addView(Landroid/view/View;)V

    .line 287
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/WallView;->btnShowAnim:Landroid/view/animation/Animation;

    .line 288
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->btnShowAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 289
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/WallView;->btnHideAnim:Landroid/view/animation/Animation;

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->btnHideAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    .line 294
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/WallView;->infoLayout:Landroid/widget/LinearLayout;

    .line 295
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 296
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/vkontakte/android/WallView;->infoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 298
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    const v2, -0xd0d0e

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 302
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/WallView;->addView(Landroid/view/View;)V

    .line 304
    new-instance v1, Lcom/vkontakte/android/WallView$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$11;-><init>(Lcom/vkontakte/android/WallView;)V

    iput-object v1, p0, Lcom/vkontakte/android/WallView;->counterClickListener:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v1, Lcom/vkontakte/android/WallView$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$12;-><init>(Lcom/vkontakte/android/WallView;)V

    iput-object v1, p0, Lcom/vkontakte/android/WallView;->infoClickListener:Landroid/view/View$OnClickListener;

    .line 480
    return-void
.end method

.method public loadData(Z)V
    .locals 8
    .param p1, "refresh"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 912
    iget-boolean v1, p0, Lcom/vkontakte/android/WallView;->showProfile:Z

    if-eqz v1, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 913
    :cond_0
    iput-boolean v6, p0, Lcom/vkontakte/android/WallView;->dataLoading:Z

    .line 914
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/vkontakte/android/WallView;->moreAvailable:Z

    if-eqz v1, :cond_4

    move v1, v5

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 915
    iget v1, p0, Lcom/vkontakte/android/WallView;->lastUpdateTime:I

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/UserWallCache;->hasEntries(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 916
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/WallGet;

    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    iget-object v2, p0, Lcom/vkontakte/android/WallView;->news:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_5

    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/WallView;->news:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    :goto_2
    iget-boolean v3, p0, Lcom/vkontakte/android/WallView;->preloading:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xa

    :goto_3
    iget-boolean v4, p0, Lcom/vkontakte/android/WallView;->showAllPosts:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_4
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/WallView;->news:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_2

    move v5, v6

    :cond_2
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGet;-><init>(IIIZZ)V

    .line 917
    .local v0, "wg":Lcom/vkontakte/android/api/WallGet;
    iget v1, p0, Lcom/vkontakte/android/WallView;->wallID:I

    if-gez v1, :cond_3

    .line 918
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->userPhoto:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/api/WallGet;->gphoto:Ljava/lang/String;

    .line 919
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/api/WallGet;->gtitle:Ljava/lang/String;

    .line 921
    :cond_3
    new-instance v1, Lcom/vkontakte/android/WallView$19;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/WallView$19;-><init>(Lcom/vkontakte/android/WallView;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGet;->setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1011
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 914
    .end local v0    # "wg":Lcom/vkontakte/android/api/WallGet;
    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    :cond_5
    move v2, v5

    .line 916
    goto :goto_2

    :cond_6
    const/16 v3, 0x14

    goto :goto_3

    :cond_7
    move v4, v6

    goto :goto_4

    .line 1013
    :cond_8
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/WallView$20;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/WallView$20;-><init>(Lcom/vkontakte/android/WallView;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1019
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public loadInitial()V
    .locals 30

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/WallView;->wallID:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v6, :cond_7

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 512
    .local v26, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "username"

    const-string v7, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/4 v1, 0x1

    const-string v6, "username1"

    const-string v7, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/4 v1, 0x2

    const-string v6, "username2"

    const-string v7, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 513
    .local v2, "name":[Ljava/lang/String;
    const-string v1, "userphoto"

    const-string v6, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "photo":Ljava/lang/String;
    const-string v1, "useruniversity"

    const-string v6, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "subtext1":Ljava/lang/String;
    const-string v1, "usercity"

    const-string v6, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, "subtext2":Ljava/lang/String;
    const-string v1, "userphotos"

    const-string v6, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 517
    .local v22, "_sphotos":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v9, v1, [Lcom/vkontakte/android/Photo;

    .line 518
    .local v9, "photos":[Lcom/vkontakte/android/Photo;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 519
    const-string v1, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 520
    .local v28, "sphotos":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v1, v0

    new-array v9, v1, [Lcom/vkontakte/android/Photo;

    .line 521
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, v28

    array-length v1, v0

    move/from16 v0, v24

    if-lt v0, v1, :cond_2

    .line 531
    .end local v24    # "i":I
    .end local v28    # "sphotos":[Ljava/lang/String;
    :cond_0
    const/16 v1, 0xc

    new-array v10, v1, [I

    .line 532
    .local v10, "counters":[I
    const-string v1, "usercounters"

    const-string v6, "0"

    move-object/from16 v0, v26

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "\\|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 534
    .local v23, "ctrs":[Ljava/lang/String;
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, v23

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v24

    if-lt v0, v1, :cond_4

    .line 536
    :goto_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 537
    .local v11, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userinfo"

    const-string v6, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "<>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 538
    .local v21, "_info":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v6, v0

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v6, :cond_5

    .line 543
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/vkontakte/android/WallView;->fillData([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Lcom/vkontakte/android/Photo;[ILjava/util/HashMap;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    const v6, 0x7f060111

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    const v6, 0x7f060111

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/WallView;->listener:Lcom/vkontakte/android/WallView$OnDataLoadedListener;

    if-eqz v1, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/WallView;->listener:Lcom/vkontakte/android/WallView$OnDataLoadedListener;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v19, v10

    invoke-interface/range {v12 .. v20}, Lcom/vkontakte/android/WallView$OnDataLoadedListener;->onDataLoaded([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[II)V

    .line 575
    .end local v2    # "name":[Ljava/lang/String;
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "subtext1":Ljava/lang/String;
    .end local v5    # "subtext2":Ljava/lang/String;
    .end local v9    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v10    # "counters":[I
    .end local v11    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "_info":[Ljava/lang/String;
    .end local v22    # "_sphotos":Ljava/lang/String;
    .end local v23    # "ctrs":[Ljava/lang/String;
    .end local v24    # "i":I
    .end local v26    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_4
    return-void

    .line 522
    .restart local v2    # "name":[Ljava/lang/String;
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "subtext1":Ljava/lang/String;
    .restart local v5    # "subtext2":Ljava/lang/String;
    .restart local v9    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v22    # "_sphotos":Ljava/lang/String;
    .restart local v24    # "i":I
    .restart local v26    # "prefs":Landroid/content/SharedPreferences;
    .restart local v28    # "sphotos":[Ljava/lang/String;
    :cond_2
    aget-object v1, v28, v24

    const-string v6, "\\|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 523
    .local v25, "pp":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    aget-object v1, v25, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    aget-object v1, v25, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 524
    new-instance v1, Lcom/vkontakte/android/Photo;

    invoke-direct {v1}, Lcom/vkontakte/android/Photo;-><init>()V

    aput-object v1, v9, v24

    .line 525
    aget-object v1, v9, v24

    const/4 v6, 0x0

    aget-object v6, v25, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/vkontakte/android/Photo;->id:I

    .line 526
    aget-object v1, v9, v24

    const/4 v6, 0x1

    aget-object v6, v25, v6

    iput-object v6, v1, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 527
    move-object/from16 v0, v25

    array-length v1, v0

    const/4 v6, 0x2

    if-le v1, v6, :cond_3

    aget-object v1, v9, v24

    const/4 v6, 0x2

    aget-object v6, v25, v6

    iput-object v6, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 521
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 534
    .end local v25    # "pp":[Ljava/lang/String;
    .end local v28    # "sphotos":[Ljava/lang/String;
    .restart local v10    # "counters":[I
    .restart local v23    # "ctrs":[Ljava/lang/String;
    :cond_4
    :try_start_1
    aget-object v1, v23, v24

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v10, v24
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 538
    .restart local v11    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "_info":[Ljava/lang/String;
    :cond_5
    aget-object v27, v21, v1

    .line 539
    .local v27, "s":Ljava/lang/String;
    const-string v7, "\\|"

    const/4 v8, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 540
    .local v29, "ss":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_6

    const/4 v7, 0x0

    aget-object v7, v29, v7

    const/4 v8, 0x1

    aget-object v8, v29, v8

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 550
    .end local v2    # "name":[Ljava/lang/String;
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "subtext1":Ljava/lang/String;
    .end local v5    # "subtext2":Ljava/lang/String;
    .end local v9    # "photos":[Lcom/vkontakte/android/Photo;
    .end local v10    # "counters":[I
    .end local v11    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "_info":[Ljava/lang/String;
    .end local v22    # "_sphotos":Ljava/lang/String;
    .end local v23    # "ctrs":[Ljava/lang/String;
    .end local v24    # "i":I
    .end local v26    # "prefs":Landroid/content/SharedPreferences;
    .end local v27    # "s":Ljava/lang/String;
    .end local v29    # "ss":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 551
    new-instance v1, Lcom/vkontakte/android/api/GetWallInfo;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/WallView;->wallID:I

    invoke-direct {v1, v6}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    .line 552
    new-instance v6, Lcom/vkontakte/android/WallView$14;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/vkontakte/android/WallView$14;-><init>(Lcom/vkontakte/android/WallView;)V

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_4

    .line 535
    .restart local v2    # "name":[Ljava/lang/String;
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "subtext1":Ljava/lang/String;
    .restart local v5    # "subtext2":Ljava/lang/String;
    .restart local v9    # "photos":[Lcom/vkontakte/android/Photo;
    .restart local v10    # "counters":[I
    .restart local v22    # "_sphotos":Ljava/lang/String;
    .restart local v23    # "ctrs":[Ljava/lang/String;
    .restart local v24    # "i":I
    .restart local v26    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method public onAddPhotoClick()V
    .locals 5

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 488
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const-string v2, "android.hardware.camera"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 491
    new-instance v4, Lcom/vkontakte/android/WallView$13;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/WallView$13;-><init>(Lcom/vkontakte/android/WallView;)V

    .line 490
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 500
    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 507
    :goto_0
    return-void

    .line 502
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget v3, p0, Lcom/vkontakte/android/WallView;->wallID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v2, "qp"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 907
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/WallView;->updateVisiblePhotos()V

    .line 908
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/vkontakte/android/NewsView;->onLayout(ZIIII)V

    .line 909
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1072
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 1075
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/WallView$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallView$22;-><init>(Lcom/vkontakte/android/WallView;)V

    .line 1088
    const-wide/16 v2, 0x64

    .line 1075
    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/WallView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1036
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/NewsView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1037
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView;->userPhoto:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView;->userPhoto:Ljava/lang/String;

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->dataLoading:Z

    if-nez v0, :cond_2

    .line 1039
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/WallView;->showUploadBtn(Z)V

    .line 1041
    :cond_2
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/WallView;->showUploadBtn(Z)V

    goto :goto_0
.end method

.method public onScrolled(F)V
    .locals 3
    .param p1, "offset"    # F

    .prologue
    const/4 v2, 0x0

    .line 1048
    invoke-super {p0, p1}, Lcom/vkontakte/android/NewsView;->onScrolled(F)V

    .line 1049
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView;->userPhoto:Ljava/lang/String;

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->dataLoading:Z

    if-nez v0, :cond_2

    .line 1051
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/WallView;->showUploadBtn(Z)V

    .line 1053
    :cond_2
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/WallView;->dataLoading:Z

    if-nez v0, :cond_0

    .line 1054
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/WallView;->showUploadBtn(Z)V

    goto :goto_0
.end method

.method public setOnDataLoadedListener(Lcom/vkontakte/android/WallView$OnDataLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/WallView$OnDataLoadedListener;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/vkontakte/android/WallView;->listener:Lcom/vkontakte/android/WallView$OnDataLoadedListener;

    .line 484
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f060119

    .line 854
    iput-object p1, p0, Lcom/vkontakte/android/WallView;->userStatus:Ljava/lang/String;

    .line 855
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->statusInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 857
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->statusInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 862
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->statusInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->statusInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setUserPhoto(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const v2, 0x7f06010c

    .line 1309
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->uploadPhotoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/vkontakte/android/WallView;->showUploadBtn(Z)V

    .line 1310
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/WallView;->userPhoto:Ljava/lang/String;

    .line 1311
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1312
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1313
    new-instance v1, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v1}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 1314
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v1

    .line 1315
    iget-object v0, p0, Lcom/vkontakte/android/WallView;->headerInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 1317
    return-void
.end method

.method public showProfileInfo(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1024
    iput-boolean p1, p0, Lcom/vkontakte/android/WallView;->showProfile:Z

    .line 1026
    iget-object v1, p0, Lcom/vkontakte/android/WallView;->infoView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1027
    return-void

    .line 1026
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
