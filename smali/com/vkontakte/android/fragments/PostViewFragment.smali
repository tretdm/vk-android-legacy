.class public Lcom/vkontakte/android/fragments/PostViewFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;,
        Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;
    }
.end annotation


# static fields
.field private static final EDIT_REQUEST:I = 0x10e8

.field public static final RESULT_DELETED:I = 0x2

.field public static final TYPE_PHOTO:I = 0x1

.field public static final TYPE_POST:I


# instance fields
.field private accessKey:Ljava/lang/String;

.field private adapter:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

.field private canAdmin:Z

.field private commentBar:Lcom/vkontakte/android/ui/WriteBar;

.field private comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field

.field private commentsProgress:Landroid/widget/ProgressBar;

.field private contentView:Landroid/widget/LinearLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private e:Lcom/vkontakte/android/NewsEntry;

.field private emojiPopup:Lcom/vkontakte/android/EmojiPopup;

.field private headerView:Landroid/view/View;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdated:J

.field private likePhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private likeReq:Lcom/vkontakte/android/APIRequest;

.field private liking:Z

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

.field private loadingComments:Z

.field private maxLikePhotos:I

.field private maxLikeVisible:I

.field private narrowScreen:Z

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private replyTo:I

.field private replyToName:Ljava/lang/String;

.field private replyToRName:Ljava/lang/String;

.field private replyToUid:I

.field private type:I

.field private videoBottomPadding:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    .line 130
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    .line 133
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    .line 134
    iput v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    iput v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    .line 135
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    .line 139
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->type:I

    .line 140
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->videoBottomPadding:Z

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    .line 144
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    .line 145
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    .line 146
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->narrowScreen:Z

    .line 167
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 171
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/PostViewFragment;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1114
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/PostViewFragment;->openPhotoList(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1150
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->waitAndSendComment()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->sendComment()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 847
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->showCommentActions(I)V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1371
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->like(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->repost()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->deletePost()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->saveRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1426
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->restoreComment(I)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->likeComment(Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->deleteComment(I)V

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    return v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    return-object v0
.end method

.method static synthetic access$39(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateHeaderBackground()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/PostViewFragment;)Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->narrowScreen:Z

    return v0
.end method

.method static synthetic access$40(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$41(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    return-void
.end method

.method static synthetic access$42(Lcom/vkontakte/android/fragments/PostViewFragment;J)V
    .locals 0

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->lastUpdated:J

    return-void
.end method

.method static synthetic access$43(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    return-void
.end method

.method static synthetic access$44(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$45(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private animateLikePhotos()V
    .locals 13

    .prologue
    const/high16 v12, 0x421c0000    # 39.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v9, 0x12c

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1295
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    const v6, 0x7f08011f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1296
    .local v2, "lpwrap":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1369
    :cond_0
    return-void

    .line 1297
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1298
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v4, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1299
    .local v4, "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v4, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1300
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1302
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    if-ne v1, v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1303
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1304
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1305
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1306
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1307
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1308
    new-instance v5, Lcom/vkontakte/android/fragments/PostViewFragment$31;

    invoke-direct {v5, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$31;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1326
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1301
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1332
    .end local v1    # "i":I
    .end local v4    # "ta":Landroid/view/animation/TranslateAnimation;
    :cond_3
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    iget v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1333
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    :cond_4
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v4, v7, v5, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1336
    .restart local v4    # "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v5, Lcom/vkontakte/android/fragments/PostViewFragment$32;

    invoke-direct {v5, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$32;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1354
    invoke-virtual {v4, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1355
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1356
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    if-ne v1, v5, :cond_5

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    iget v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1357
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1358
    .restart local v3    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1359
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1360
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1361
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1362
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1363
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1365
    :cond_5
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

.method private broadcastUpdate()V
    .locals 10

    .prologue
    .line 1088
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v0, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1089
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1091
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    const-string v0, "comments"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string v0, "retweets"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string v0, "likes"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string v0, "liked"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    const-string v0, "retweeted"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1098
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/cache/NewsfeedCache;->update(Landroid/content/Context;IIIIIZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1099
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 949
    new-instance v0, Lcom/vkontakte/android/api/WallDeleteComment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallDeleteComment;-><init>(IIIILjava/lang/String;)V

    .line 950
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$24;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$24;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDeleteComment;->setCallback(Lcom/vkontakte/android/api/WallDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 973
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 974
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 975
    return-void
.end method

.method private deletePost()V
    .locals 4

    .prologue
    .line 721
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 722
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$18;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 744
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 745
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 746
    return-void
.end method

.method private editRepostComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 749
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 750
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 751
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 752
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 753
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 754
    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 755
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 756
    const v2, 0x7f060086

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$19;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$19;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 762
    const v2, 0x7f060027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 763
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 764
    return-void
.end method

.method private like(Z)V
    .locals 8
    .param p1, "liked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1372
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1373
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1375
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->broadcastUpdate()V

    .line 1376
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    .line 1377
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->animateLikePhotos()V

    .line 1378
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    if-eqz v0, :cond_1

    .line 1418
    :goto_1
    return-void

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 1379
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    .line 1380
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v1, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/VideoAttachment;

    iget-object v7, v1, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    :goto_2
    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    .line 1381
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$33;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$33;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1417
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    .line 1380
    :cond_2
    const-string v7, ""

    goto :goto_2
.end method

.method private likeComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 8
    .param p1, "comm"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    const/4 v4, 0x0

    .line 931
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-boolean v1, p1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v3, p1, Lcom/vkontakte/android/NewsComment;->cid:I

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    .line 932
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$23;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$23;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 946
    return-void

    .line 931
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadComments(Z)V
    .locals 10
    .param p1, "clear"    # Z

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    if-eqz v0, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1152
    :cond_0
    if-eqz p1, :cond_2

    const/4 v9, 0x0

    .line 1153
    .local v9, "csize":I
    :goto_1
    const/4 v3, 0x0

    .line 1158
    .local v3, "offset":I
    const/16 v8, 0xa

    .line 1159
    .local v8, "count":I
    if-nez p1, :cond_1

    .line 1160
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v0, v9

    sub-int v3, v0, v8

    .line 1165
    :cond_1
    move v3, v9

    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    .line 1168
    new-instance v0, Lcom/vkontakte/android/api/WallGetComments;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eqz p1, :cond_3

    const/16 v4, 0xa

    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallGetComments;-><init>(IIIIIZLjava/lang/String;)V

    .line 1169
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$30;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$30;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1251
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1168
    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1152
    .end local v3    # "offset":I
    .end local v8    # "count":I
    .end local v9    # "csize":I
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_1

    .restart local v3    # "offset":I
    .restart local v8    # "count":I
    .restart local v9    # "csize":I
    :cond_3
    move v4, v8

    .line 1168
    goto :goto_2
.end method

.method private loadVideoInfo()V
    .locals 3

    .prologue
    .line 1453
    new-instance v0, Lcom/vkontakte/android/api/VideoGetInfo;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoGetInfo;-><init>(II)V

    .line 1454
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$35;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$35;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetInfo;->setCallback(Lcom/vkontakte/android/api/VideoGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1479
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1480
    return-void
.end method

.method private openPhotoList(ILandroid/view/View;)V
    .locals 14
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "photo_viewer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    const v2, 0x7f08011b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1117
    .local v6, "attachContainer":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v8, v0, :cond_2

    move-object/from16 v0, p2

    .line 1125
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1126
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    instance-of v0, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 1127
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 1129
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1130
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "orientation"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1131
    const-string v0, "list"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1132
    const-string v0, "position"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1133
    const-string v0, "PhotoViewerFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_0

    .line 1118
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1119
    .local v11, "v":Landroid/view/View;
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 1120
    .local v9, "pos":[I
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1121
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    const/4 v5, 0x0

    aget v5, v9, v5

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v5, v12

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 1122
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v11, v0}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 1123
    .local v10, "top":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    if-gez v10, :cond_3

    neg-int v2, v10

    :goto_2
    iput v2, v0, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 1117
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1123
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private repost()V
    .locals 3

    .prologue
    .line 1421
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1422
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1423
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1424
    return-void
.end method

.method private restoreComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 1427
    new-instance v0, Lcom/vkontakte/android/api/WallRestoreComment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallRestoreComment;-><init>(IIIILjava/lang/String;)V

    .line 1428
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$34;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$34;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallRestoreComment;->setCallback(Lcom/vkontakte/android/api/WallRestoreComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1448
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1449
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1450
    return-void
.end method

.method private saveRepostComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "newComment"    # Ljava/lang/String;

    .prologue
    .line 767
    new-instance v0, Lcom/vkontakte/android/api/WallEdit;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p1}, Lcom/vkontakte/android/api/WallEdit;-><init>(IILjava/lang/String;)V

    .line 768
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$20;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallEdit;->setCallback(Lcom/vkontakte/android/api/WallEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 794
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 795
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 796
    return-void
.end method

.method private sendComment()V
    .locals 12

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v9

    .line 1001
    .local v9, "_txt":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1002
    .local v8, "_r":Z
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    const/4 v8, 0x1

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    if-lez v0, :cond_1

    const-string v0, "id"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "],"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1006
    :cond_0
    move v11, v8

    .line 1007
    .local v11, "r":Z
    move-object v3, v9

    .line 1008
    .local v3, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v10

    .line 1009
    .local v10, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 1013
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1084
    :goto_1
    return-void

    .line 1004
    .end local v3    # "txt":Ljava/lang/String;
    .end local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v11    # "r":Z
    :cond_1
    const-string v0, "club"

    goto :goto_0

    .line 1014
    .restart local v3    # "txt":Ljava/lang/String;
    .restart local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v11    # "r":Z
    :cond_2
    new-instance v0, Lcom/vkontakte/android/api/WallAddComment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const-string v6, ","

    invoke-static {v6, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallAddComment;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1015
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-direct {v1, p0, v3, v10}, Lcom/vkontakte/android/fragments/PostViewFragment$27;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1082
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1083
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private showCommentActions(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    .line 848
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 850
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f060070

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    const-string v4, "profile"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    const v4, 0x7f060047

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    const-string v4, "reply"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    const v4, 0x7f0600f0

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    const-string v4, "copy"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    iget-boolean v4, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v4, :cond_6

    const v4, 0x7f06010b

    :goto_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    const-string v4, "like"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    iget v4, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v4, :cond_2

    .line 861
    const v4, 0x7f0600ee

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    const-string v4, "liked"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_2
    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v4

    if-ne v4, v6, :cond_3

    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    if-lez v4, :cond_3

    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v4

    if-le v4, v6, :cond_5

    .line 865
    :cond_4
    const v4, 0x7f060062

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    const-string v4, "delete"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_7

    .line 872
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 873
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/vkontakte/android/fragments/PostViewFragment$22;

    invoke-direct {v6, p0, v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$22;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v5, v4, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 927
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 858
    .end local v2    # "i":I
    :cond_6
    const v4, 0x7f06010a

    goto/16 :goto_1

    .line 869
    .restart local v2    # "i":I
    :cond_7
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updateButtons()V
    .locals 8

    .prologue
    const v7, 0x7f080120

    const v6, 0x7f08011d

    const v5, 0x7f080121

    const v4, 0x7f08011e

    const/4 v3, 0x0

    .line 1255
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1262
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1264
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020196

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1266
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1274
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v0, :cond_2

    .line 1275
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1281
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1282
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1283
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020199

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1285
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1292
    :goto_3
    return-void

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    .line 1268
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1269
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1270
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020195

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1271
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1278
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_2

    .line 1287
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1288
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1289
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020198

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1290
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3
.end method

.method private updateHeaderBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 800
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 804
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 810
    return-void
.end method

.method private updateLikePhotos()V
    .locals 4

    .prologue
    .line 813
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$21;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 844
    const-wide/16 v2, 0x64

    .line 813
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 845
    return-void
.end method

.method private updateList()V
    .locals 4

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$28;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1143
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$29;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$29;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1147
    const-wide/16 v2, 0x190

    .line 1143
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1148
    return-void
.end method

.method private updatePaddings()V
    .locals 2

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 641
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->narrowScreen:Z

    .line 642
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateHeaderBackground()V

    .line 643
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    .line 644
    return-void
.end method

.method private waitAndSendComment()V
    .locals 4

    .prologue
    .line 978
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 979
    .local v2, "progress":Landroid/app/ProgressDialog;
    const v3, 0x7f060010

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 980
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 981
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 982
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 983
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$25;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$25;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V

    .line 989
    .local v0, "onDone":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$26;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$26;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V

    .line 995
    .local v1, "onFailed":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3, v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 996
    return-void
.end method


# virtual methods
.method public getImageAttachView(I)Landroid/view/View;
    .locals 5
    .param p1, "idx"    # I

    .prologue
    .line 615
    const/4 v1, 0x0

    .local v1, "cnt":I
    const/4 v2, 0x0

    .line 616
    .local v2, "i":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 623
    const/4 v2, 0x0

    .line 624
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 631
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 616
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 617
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_2

    .line 618
    if-ne v1, p1, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    const v4, 0x7f080118

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 619
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 621
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 625
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_5

    .line 626
    if-ne v1, p1, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    const v4, 0x7f08011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 627
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 629
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1109
    iget-wide v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->lastUpdated:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->lastUpdated:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 647
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 648
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkontakte/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 649
    :cond_0
    const/16 v0, 0x10e8

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/FragmentWrapperActivity;

    if-eqz v0, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 653
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 40
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 174
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v33

    const-string v34, "entry"

    invoke-virtual/range {v33 .. v34}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v33, v0

    if-nez v33, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 177
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v33

    const-string v34, "type"

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->type:I

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v24

    .line 179
    .local v24, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual/range {v24 .. v24}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 180
    invoke-virtual/range {v24 .. v24}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v33

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    .line 183
    const v33, 0x7f060014

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 192
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    .line 581
    :goto_1
    return-void

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 187
    const v33, 0x7f060016

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 190
    :cond_2
    const v33, 0x7f06002c

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 209
    :cond_3
    sget-object v33, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 210
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    mul-int/lit8 v34, v34, 0x2

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    sub-int v27, v33, v34

    .line 211
    .local v27, "tSize":I
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    const v34, 0x3f2a7efa    # 0.666f

    mul-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move/from16 v0, v27

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 214
    new-instance v33, Lcom/vkontakte/android/fragments/PostViewFragment$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 229
    new-instance v33, Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 230
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, -0x1

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v15, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v0, v33

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 235
    new-instance v33, Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const v36, 0x7f020168

    invoke-direct/range {v33 .. v36}, Lcom/vkontakte/android/EmojiPopup;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v34, v0

    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x1

    const/16 v37, -0x1

    const/high16 v38, 0x3f800000    # 1.0f

    invoke-direct/range {v35 .. v38}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v33 .. v35}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    const/16 v34, -0x1

    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 240
    new-instance v33, Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 242
    new-instance v25, Landroid/view/View;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 243
    .local v25, "shadow":Landroid/view/View;
    const v33, 0x7f0200b8

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, -0x1

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v33, -0x40000000    # -2.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const v34, 0x7f080179

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    const/high16 v34, 0x10000000

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 252
    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "shadow":Landroid/view/View;
    :cond_4
    const v33, 0x7f03005a

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    new-instance v34, Landroid/graphics/drawable/ColorDrawable;

    const v35, -0x1a1a1b

    invoke-direct/range {v34 .. v35}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v36}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const v34, -0x1f1f20

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setHeaderDividersEnabled(Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setFooterDividersEnabled(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const v34, 0x7f0200da

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 263
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0xb

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/16 v34, -0x1

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/16 v34, -0x1

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 267
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setFromTop(Z)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v33

    const-string v34, "is_admin"

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    if-nez v33, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    const/16 v34, 0x40

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v33

    if-nez v33, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v33, v0

    sget v34, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v33, v0

    sget v34, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v33, v0

    if-eqz v33, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v33, v0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_f

    const/16 v33, 0x0

    :goto_2
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080117

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_10

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011a

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "\n"

    const-string v36, "<br/>"

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v34

    check-cast v34, Landroid/text/Spannable;

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011a

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 284
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080115

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v29

    .line 286
    .local v29, "time":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    const/16 v34, 0x200

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 287
    new-instance v8, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    .local v8, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v33

    const-string v34, "F"

    invoke-virtual/range {v33 .. v34}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v26

    .line 289
    .local v26, "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f020194

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 290
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v35

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v36

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    new-instance v33, Landroid/text/style/ImageSpan;

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v0, v9, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 292
    const-string v33, " "

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 293
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 294
    move-object/from16 v29, v8

    .line 296
    .end local v8    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v26    # "sp":Landroid/text/Spannable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080116

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/ui/FlowLayout;

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_9

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const/16 v18, 0x0

    .local v18, "nPhotos":I
    const/16 v22, 0x0

    .line 304
    .local v22, "pi":I
    const/16 v28, 0x0

    .line 305
    .local v28, "thumb":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_8
    :goto_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_11

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_12

    .line 360
    if-eqz v28, :cond_9

    .line 361
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 362
    .local v14, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    if-eqz v14, :cond_9

    .line 363
    const/16 v33, 0x1

    move/from16 v0, v33

    iput-boolean v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 364
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    .end local v14    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v18    # "nPhotos":I
    .end local v22    # "pi":I
    .end local v28    # "thumb":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_b

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080118

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 370
    const/16 v18, 0x0

    .restart local v18    # "nPhotos":I
    const/16 v22, 0x0

    .line 371
    .restart local v22    # "pi":I
    const/16 v28, 0x0

    .line 372
    .restart local v28    # "thumb":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_a
    :goto_6
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_1e

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_7
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_1f

    .line 394
    if-eqz v28, :cond_b

    .line 395
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 396
    .restart local v14    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    if-eqz v14, :cond_b

    .line 397
    const/16 v33, 0x1

    move/from16 v0, v33

    iput-boolean v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 398
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    .end local v14    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v18    # "nPhotos":I
    .end local v22    # "pi":I
    .end local v28    # "thumb":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080113

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$5;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$5;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move/from16 v33, v0

    if-eqz v33, :cond_c

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080119

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011a

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 415
    .local v23, "pt":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingLeft()I

    move-result v33

    const/16 v34, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingRight()I

    move-result v35

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingBottom()I

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080119

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$6;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$6;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08015a

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08015c

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    move/from16 v34, v0

    if-lez v34, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    move/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v34

    :goto_8
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    move/from16 v34, v0

    if-nez v34, :cond_24

    const-string v34, ""

    :goto_9
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_c

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    const v34, 0x7f080117

    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    const v34, 0x7f080117

    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "\n"

    const-string v36, "<br/>"

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v34

    check-cast v34, Landroid/text/Spannable;

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    .end local v23    # "pt":Landroid/view/View;
    :cond_c
    const v33, 0x7f03003a

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v33, v0

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v33, v0

    new-instance v34, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x1

    const/high16 v36, 0x422c0000    # 43.0f

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v36

    invoke-direct/range {v34 .. v36}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/LoadMoreCommentsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v33, v0

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$7;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$7;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/LoadMoreCommentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    .line 449
    new-instance v33, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-direct/range {v33 .. v36}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const v34, 0x7f08017a

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$8;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$8;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    new-instance v33, Landroid/widget/ProgressBar;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    .line 465
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/high16 v34, 0x41f00000    # 30.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 466
    .local v19, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$9;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$9;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$10;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$10;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    const v34, 0x7f08011f

    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 500
    .local v16, "lpwrap":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_a
    const/16 v33, 0xa

    move/from16 v0, v33

    if-lt v11, v0, :cond_25

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011d

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$11;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$11;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080120

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$12;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$12;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011f

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$13;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$13;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadVideoInfo()V

    .line 541
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->setFragment(Lcom/actionbarsherlock/app/SherlockFragment;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Lcom/vkontakte/android/ui/WriteBar;->setUploadType(II)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v33

    const-string v34, "comment"

    invoke-virtual/range {v33 .. v34}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/vkontakte/android/ui/WriteBar;->focus()V

    .line 548
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/vkontakte/android/ui/WriteBar;->setAttachLimits(IZ)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const v34, 0x7f08017b

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$14;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$14;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const v34, 0x7f08017b

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    const v34, 0x7f020168

    invoke-virtual/range {v33 .. v34}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const v34, 0x7f08017b

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$15;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$15;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v33, v0

    const v34, 0x7f080179

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/EditText;

    new-instance v34, Lcom/vkontakte/android/fragments/PostViewFragment$16;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$16;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v33 .. v34}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 579
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->setHasOptionsMenu(Z)V

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updatePaddings()V

    goto/16 :goto_1

    .line 269
    .end local v11    # "i":I
    .end local v16    # "lpwrap":Landroid/widget/LinearLayout;
    .end local v19    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v29    # "time":Ljava/lang/CharSequence;
    :cond_f
    const/16 v33, 0x1

    goto/16 :goto_2

    .line 276
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011a

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 279
    .local v30, "v":Landroid/view/View;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, -0x1

    const/16 v34, -0x2

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v33, 0x40e00000    # 7.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/high16 v34, 0x40e00000    # 7.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    const/high16 v35, 0x40e00000    # 7.0f

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v35

    const/high16 v36, 0x40e00000    # 7.0f

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v36

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 281
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 305
    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "v":Landroid/view/View;
    .restart local v18    # "nPhotos":I
    .restart local v22    # "pi":I
    .restart local v28    # "thumb":Landroid/view/View;
    .restart local v29    # "time":Ljava/lang/CharSequence;
    :cond_11
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_8

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 306
    :cond_12
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 307
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    .line 308
    .local v7, "attView":Landroid/view/View;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_14

    move-object/from16 v33, v6

    .line 309
    check-cast v33, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_13

    .line 310
    new-instance v21, Lcom/vkontakte/android/Photo;

    move-object/from16 v33, v6

    check-cast v33, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    .line 311
    .local v21, "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    move/from16 v12, v22

    .line 313
    .local v12, "idx":I
    new-instance v33, Lcom/vkontakte/android/fragments/PostViewFragment$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/vkontakte/android/fragments/PostViewFragment$3;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    add-int/lit8 v22, v22, 0x1

    .line 321
    .end local v12    # "idx":I
    .end local v21    # "photo":Lcom/vkontakte/android/Photo;
    :cond_13
    const/16 v33, 0x1

    move/from16 v0, v18

    move/from16 v1, v33

    if-gt v0, v1, :cond_14

    instance-of v0, v7, Landroid/widget/ImageView;

    move/from16 v33, v0

    if-eqz v33, :cond_14

    move-object/from16 v33, v7

    check-cast v33, Landroid/widget/ImageView;

    sget-object v34, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v33 .. v34}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 324
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    .line 325
    :cond_15
    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_16

    move-object/from16 v33, v6

    .line 326
    check-cast v33, Lcom/vkontakte/android/VideoAttachment;

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/VideoAttachment;->getView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v7

    .line 327
    const v33, 0x7f080046

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 328
    const v33, 0x7f080049

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    .restart local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v33

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/high16 v34, -0x1000000

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 335
    .local v31, "vsize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 336
    .local v5, "a":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    check-cast v33, Landroid/view/ViewGroup;

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->videoBottomPadding:Z

    move/from16 v33, v0

    if-nez v33, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v33, v0

    const/16 v39, 0x2

    move/from16 v0, v33

    move/from16 v1, v39

    if-ne v0, v1, :cond_1a

    :cond_17
    const/high16 v33, 0x40e00000    # 7.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    :goto_b
    move-object/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f080113

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 341
    .local v20, "pb":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v34, v0

    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    const/16 v34, 0x3

    :goto_c
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011a

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 344
    instance-of v0, v7, Lcom/vkontakte/android/VideoAttachView;

    move/from16 v33, v0

    if-eqz v33, :cond_18

    .line 345
    sget-boolean v33, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v33, :cond_1c

    const/16 v33, 0x280

    :goto_d
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 346
    .local v32, "w":I
    move/from16 v0, v32

    move/from16 v1, v31

    if-eq v0, v1, :cond_1d

    const/16 v33, 0x1

    :goto_e
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->videoBottomPadding:Z

    .line 347
    new-instance v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v10, v0, v1}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v10, "flp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    move/from16 v0, v32

    iput v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 349
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3f400000    # 0.75f

    mul-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 350
    const/16 v33, 0x1

    move/from16 v0, v33

    iput-boolean v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->center:Z

    .line 351
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    const v33, 0x7f080056

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    new-instance v34, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v36, v0

    iget v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    move/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .end local v5    # "a":Landroid/view/View;
    .end local v10    # "flp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v20    # "pb":Landroid/view/View;
    .end local v31    # "vsize":I
    .end local v32    # "w":I
    :cond_18
    instance-of v0, v6, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_19

    move-object/from16 v28, v7

    .line 358
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v34, 0x7f08011b

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 338
    .restart local v5    # "a":Landroid/view/View;
    .restart local v31    # "vsize":I
    :cond_1a
    const/16 v33, 0x0

    goto/16 :goto_b

    .line 342
    .restart local v20    # "pb":Landroid/view/View;
    :cond_1b
    const/16 v34, 0x0

    goto/16 :goto_c

    .line 345
    :cond_1c
    const/16 v33, 0x140

    goto/16 :goto_d

    .line 346
    .restart local v32    # "w":I
    :cond_1d
    const/16 v33, 0x0

    goto :goto_e

    .line 372
    .end local v5    # "a":Landroid/view/View;
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v7    # "attView":Landroid/view/View;
    .end local v20    # "pb":Landroid/view/View;
    .end local v31    # "vsize":I
    .end local v32    # "w":I
    :cond_1e
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v34, v0

    if-eqz v34, :cond_a

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_a

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 373
    :cond_1f
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 374
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    .line 375
    .restart local v7    # "attView":Landroid/view/View;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_21

    move-object/from16 v33, v6

    .line 376
    check-cast v33, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_20

    .line 377
    new-instance v21, Lcom/vkontakte/android/Photo;

    move-object/from16 v33, v6

    check-cast v33, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    .line 378
    .restart local v21    # "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    move/from16 v12, v22

    .line 380
    .restart local v12    # "idx":I
    new-instance v33, Lcom/vkontakte/android/fragments/PostViewFragment$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/vkontakte/android/fragments/PostViewFragment$4;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    add-int/lit8 v22, v22, 0x1

    .line 388
    .end local v12    # "idx":I
    .end local v21    # "photo":Lcom/vkontakte/android/Photo;
    :cond_20
    const/16 v33, 0x1

    move/from16 v0, v18

    move/from16 v1, v33

    if-gt v0, v1, :cond_21

    instance-of v0, v7, Landroid/widget/ImageView;

    move/from16 v33, v0

    if-eqz v33, :cond_21

    move-object/from16 v33, v7

    check-cast v33, Landroid/widget/ImageView;

    sget-object v35, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 391
    :cond_21
    instance-of v0, v6, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_22

    move-object/from16 v28, v7

    .line 392
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const v35, 0x7f080118

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 427
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v7    # "attView":Landroid/view/View;
    .end local v18    # "nPhotos":I
    .end local v22    # "pi":I
    .end local v28    # "thumb":Landroid/view/View;
    .restart local v23    # "pt":Landroid/view/View;
    :cond_23
    const-string v34, ""

    goto/16 :goto_8

    :cond_24
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v36, " "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v36, 0x7f060102

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_9

    .line 501
    .end local v23    # "pt":Landroid/view/View;
    .restart local v11    # "i":I
    .restart local v16    # "lpwrap":Landroid/widget/LinearLayout;
    .restart local v19    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_25
    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 502
    .local v13, "iv":Landroid/widget/ImageView;
    const/16 v33, 0x8

    move/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    const v33, 0x7f020247

    move/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v33, 0x420c0000    # 35.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/high16 v34, 0x420c0000    # 35.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 505
    .restart local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v33, 0x40800000    # 4.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 506
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 636
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updatePaddings()V

    .line 637
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 584
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 585
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 586
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 588
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const v7, 0x7f080195

    const/4 v6, 0x0

    .line 656
    const v0, 0x7f0e000b

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 657
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v0, :cond_0

    .line 659
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v0, :cond_2

    .line 662
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 670
    :cond_1
    :goto_0
    const v0, 0x7f080196

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 671
    const v0, 0x7f080015

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 672
    return-void

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 667
    :cond_4
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 668
    const v0, 0x7f080185

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 593
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 596
    :cond_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 679
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080185

    if-ne v4, v5, :cond_2

    .line 680
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f060063

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060064

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 681
    const v5, 0x7f060034

    new-instance v6, Lcom/vkontakte/android/fragments/PostViewFragment$17;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$17;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 686
    const v5, 0x7f060035

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 687
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    const v3, 0x1080027

    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 688
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 717
    :cond_1
    :goto_0
    return v8

    .line 689
    :cond_2
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080195

    if-ne v4, v5, :cond_4

    .line 690
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 691
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "edit"

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 696
    const/16 v3, 0x10e8

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 697
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08001d

    if-ne v4, v5, :cond_9

    .line 698
    const-string v2, "http://vk.com/"

    .line 699
    .local v2, "ln":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v4, :cond_6

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "wall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 710
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 711
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0601b2

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 701
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v8, :cond_8

    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 705
    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "topic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 712
    .end local v2    # "ln":Ljava/lang/String;
    :cond_9
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080196

    if-ne v4, v5, :cond_a

    .line 713
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "vkontakte://vk.com/wall"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 714
    :cond_a
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080015

    if-ne v4, v5, :cond_1

    .line 715
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v5, 0x35

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int/2addr v6, v7

    const v7, 0x7f02007c

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 599
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 600
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 601
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 603
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 676
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    .line 1105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 606
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 607
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 608
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 1743
    return-void
.end method
