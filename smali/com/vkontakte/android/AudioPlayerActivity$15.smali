.class Lcom/vkontakte/android/AudioPlayerActivity$15;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->displayInfo(Lcom/vkontakte/android/AudioFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field private final synthetic val$f:Lcom/vkontakte/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerActivity$15;)Lcom/vkontakte/android/AudioPlayerActivity;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iput-object v13, v12, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    .line 602
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xe

    if-lt v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v12}, Lcom/vkontakte/android/AudioPlayerActivity;->access$7(Lcom/vkontakte/android/AudioPlayerActivity;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 603
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v13, 0x7f090084

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v13, v13, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v13, 0x7f090086

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v13, v13, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->access$8(Lcom/vkontakte/android/AudioPlayerActivity;Z)V

    .line 642
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v13, 0x7f090083

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v13, "%d:%02d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3c

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0x3c

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v13, 0x7f090084

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/View;->setSelected(Z)V

    .line 644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v13, 0x7f090086

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/View;->setSelected(Z)V

    .line 645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v12}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f090087

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 646
    .local v7, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v7, :cond_2

    .line 647
    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v7, v12}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    .line 648
    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    .line 649
    .local v8, "position":I
    if-gtz v8, :cond_a

    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    .line 651
    .local v9, "realPos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v12}, Lcom/vkontakte/android/AudioPlayerActivity;->access$2(Lcom/vkontakte/android/AudioPlayerActivity;)I

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v12

    if-eq v9, v12, :cond_2

    .line 652
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v12}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v12

    new-instance v13, Lcom/vkontakte/android/AudioPlayerActivity$15$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7}, Lcom/vkontakte/android/AudioPlayerActivity$15$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$15;Landroid/support/v4/view/ViewPager;)V

    .line 667
    const-wide/16 v14, 0x12c

    .line 652
    invoke-virtual {v12, v13, v14, v15}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    .end local v8    # "position":I
    .end local v9    # "realPos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->updateCover(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerActivity;->updateLyrics()V

    .line 673
    return-void

    .line 607
    .end local v7    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v13, 0x7f090084

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 608
    .local v2, "artist":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v13, 0x7f090086

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 609
    .local v11, "title":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "curArtist":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "curTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v12, v12, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v12, v12, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v12, v12, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v13}, Lcom/vkontakte/android/AudioPlayerActivity;->access$9(Lcom/vkontakte/android/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v12, v12, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v13}, Lcom/vkontakte/android/AudioPlayerActivity;->access$10(Lcom/vkontakte/android/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 612
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v13, v13, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->access$11(Lcom/vkontakte/android/AudioPlayerActivity;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v13, v13, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/vkontakte/android/AudioPlayerActivity;->access$12(Lcom/vkontakte/android/AudioPlayerActivity;Ljava/lang/String;)V

    .line 614
    new-instance v5, Lcom/vkontakte/android/AudioPlayerActivity$15$1;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2, v12, v11}, Lcom/vkontakte/android/AudioPlayerActivity$15$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$15;Landroid/widget/TextView;Lcom/vkontakte/android/AudioFile;Landroid/widget/TextView;)V

    .line 619
    .local v5, "listener":Landroid/animation/AnimatorListenerAdapter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v1, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v12, v12, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 621
    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-static {v2, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 622
    .local v6, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xc8

    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 623
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 624
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 625
    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 626
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .end local v6    # "oa":Landroid/animation/ObjectAnimator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v12, v12, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 629
    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_1

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 630
    .restart local v6    # "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xc8

    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 631
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 632
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/AudioPlayerActivity$15;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v12, v12, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 634
    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 635
    :cond_7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v6    # "oa":Landroid/animation/ObjectAnimator;
    :cond_8
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 638
    .local v10, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 639
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 647
    .end local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "artist":Landroid/widget/TextView;
    .end local v3    # "curArtist":Ljava/lang/String;
    .end local v4    # "curTitle":Ljava/lang/String;
    .end local v5    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v10    # "set":Landroid/animation/AnimatorSet;
    .end local v11    # "title":Landroid/widget/TextView;
    .restart local v7    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 649
    .restart local v8    # "position":I
    :cond_a
    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v12

    if-le v8, v12, :cond_b

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v9, v8, -0x1

    goto/16 :goto_2

    .line 621
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 629
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
