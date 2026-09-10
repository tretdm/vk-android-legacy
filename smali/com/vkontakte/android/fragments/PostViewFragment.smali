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
.field private static final EDIT_COMMENT_REQUEST:I = 0x10e9

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

.field private error:Lcom/vkontakte/android/ui/ErrorView;

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

.field private repostPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private scrollToComment:I

.field private type:I

.field private videoBottomPadding:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    .line 136
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    .line 139
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    .line 140
    iput v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    iput v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    .line 141
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->repostPhotos:Ljava/util/ArrayList;

    .line 146
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->type:I

    .line 147
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->videoBottomPadding:Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    .line 151
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    .line 152
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    .line 153
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 177
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->narrowScreen:Z

    .line 180
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 182
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    .line 186
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1527
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/PostViewFragment;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1331
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/fragments/PostViewFragment;->openPhotoList(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->repostPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1367
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->waitAndSendComment()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->sendComment()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->animateLikePhotos()V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->showCommentActions(I)V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1644
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->like(Z)V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1700
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->repost()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->deletePost()V

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->saveRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    return v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1118
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->likeComment(Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$38(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1137
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->deleteComment(I)V

    return-void
.end method

.method static synthetic access$39(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->editComment(Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1706
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->restoreComment(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$41(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    return v0
.end method

.method static synthetic access$42(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    return-object v0
.end method

.method static synthetic access$44(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateHeaderBackground()V

    return-void
.end method

.method static synthetic access$45(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$46(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    return-void
.end method

.method static synthetic access$47(Lcom/vkontakte/android/fragments/PostViewFragment;J)V
    .locals 0

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->lastUpdated:J

    return-void
.end method

.method static synthetic access$48(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    return-void
.end method

.method static synthetic access$49(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$50(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1506
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->highlightComment(I)V

    return-void
.end method

.method static synthetic access$51(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    return-void
.end method

.method static synthetic access$52(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

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

    .line 1568
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    const v6, 0x7f09015a

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1569
    .local v2, "lpwrap":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1642
    :cond_0
    return-void

    .line 1570
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1571
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v4, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1572
    .local v4, "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v4, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1573
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1574
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1575
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    if-ne v1, v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1576
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1577
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1578
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1579
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1580
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    new-instance v5, Lcom/vkontakte/android/fragments/PostViewFragment$34;

    invoke-direct {v5, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$34;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1599
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1574
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1601
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1605
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

    .line 1606
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    :cond_4
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v4, v7, v5, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1609
    .restart local v4    # "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v5, Lcom/vkontakte/android/fragments/PostViewFragment$35;

    invoke-direct {v5, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$35;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1627
    invoke-virtual {v4, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1628
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

    .line 1629
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    if-ne v1, v5, :cond_5

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    iget v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1630
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1631
    .restart local v3    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1632
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1633
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1634
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1635
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1636
    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1628
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1638
    :cond_5
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

.method private broadcastUpdate()V
    .locals 10

    .prologue
    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v0, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1306
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1308
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1309
    const-string v0, "comments"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1310
    const-string v0, "retweets"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1311
    const-string v0, "likes"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    const-string v0, "liked"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1313
    const-string v0, "retweeted"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1314
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1315
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

    .line 1316
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 1138
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

    .line 1139
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$26;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$26;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDeleteComment;->setCallback(Lcom/vkontakte/android/api/WallDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1162
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1164
    return-void
.end method

.method private deletePost()V
    .locals 4

    .prologue
    .line 875
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 876
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$20;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 899
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 900
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 901
    return-void
.end method

.method private editComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 4
    .param p1, "comm"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    .line 1167
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 1168
    .local v0, "ce":Lcom/vkontakte/android/NewsEntry;
    iget-object v2, p1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 1169
    iget-object v2, p1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 1170
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 1171
    iget v2, p1, Lcom/vkontakte/android/NewsComment;->cid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 1172
    iget v2, p1, Lcom/vkontakte/android/NewsComment;->uid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 1173
    const/4 v2, 0x5

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 1174
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1183
    const-string v2, "wall"

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 1187
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1189
    const/16 v2, 0x10e9

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1190
    return-void

    .line 1176
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v2, "photos"

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    goto :goto_0

    .line 1179
    :pswitch_1
    const-string v2, "video"

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    goto :goto_0

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private editRepostComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 904
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 905
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 906
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 907
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 908
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 909
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 910
    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 911
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 912
    const v2, 0x7f0800a0

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$21;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$21;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 918
    const v2, 0x7f080041

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 919
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 920
    return-void
.end method

.method private highlightComment(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$33;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$33;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1525
    return-void
.end method

.method private like(Z)V
    .locals 8
    .param p1, "liked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1645
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1646
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1648
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->broadcastUpdate()V

    .line 1649
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    .line 1650
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->animateLikePhotos()V

    .line 1651
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    if-eqz v0, :cond_1

    .line 1698
    :goto_1
    return-void

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 1652
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    .line 1653
    const-string v7, ""

    .line 1654
    .local v7, "akey":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1655
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    iget-object v7, v0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 1656
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v0, v2, :cond_3

    .line 1657
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v7, v0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 1658
    :cond_3
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    .line 1659
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$36;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$36;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1697
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private likeComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 8
    .param p1, "comm"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    const/4 v4, 0x0

    .line 1119
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

    .line 1120
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$25;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$25;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1134
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1135
    return-void

    .line 1119
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadComments(Z)V
    .locals 9
    .param p1, "clear"    # Z

    .prologue
    .line 1368
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    if-eqz v0, :cond_0

    .line 1504
    :goto_0
    return-void

    .line 1370
    :cond_0
    if-eqz p1, :cond_3

    const/4 v8, 0x0

    .line 1371
    .local v8, "csize":I
    :goto_1
    const/4 v3, 0x0

    .line 1376
    .local v3, "offset":I
    const/16 v4, 0xa

    .line 1377
    .local v4, "count":I
    if-nez p1, :cond_1

    .line 1378
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1379
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v0, v8

    sub-int v3, v0, v4

    .line 1381
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    if-eqz v0, :cond_2

    .line 1382
    const/16 v4, 0x32

    .line 1385
    :cond_2
    move v3, v8

    .line 1387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    .line 1388
    new-instance v0, Lcom/vkontakte/android/api/WallGetComments;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallGetComments;-><init>(IIIIIZLjava/lang/String;)V

    .line 1389
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$32;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$32;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1503
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1388
    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1370
    .end local v3    # "offset":I
    .end local v4    # "count":I
    .end local v8    # "csize":I
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_1
.end method

.method private loadVideoInfo()V
    .locals 3

    .prologue
    .line 1733
    new-instance v0, Lcom/vkontakte/android/api/VideoGetInfo;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoGetInfo;-><init>(II)V

    .line 1734
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$38;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$38;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetInfo;->setCallback(Lcom/vkontakte/android/api/VideoGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1760
    return-void
.end method

.method private openPhotoList(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attachContainer"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1332
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "photo_viewer"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1334
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v8, v1, :cond_2

    move-object/from16 v1, p2

    .line 1342
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1343
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    instance-of v1, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 1344
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 1346
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1347
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "orientation"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1348
    const-string v1, "list"

    move-object/from16 v0, p4

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1349
    const-string v1, "position"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    const-string v1, "PhotoViewerFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_0

    .line 1335
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1336
    .local v11, "v":Landroid/view/View;
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 1337
    .local v9, "pos":[I
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1338
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v9, v4

    const/4 v5, 0x1

    aget v5, v9, v5

    const/4 v6, 0x0

    aget v6, v9, v6

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v6, v12

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v3, v4, v5, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 1339
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v11, v1}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v10, v1, Landroid/graphics/Point;->y:I

    .line 1340
    .local v10, "top":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    if-gez v10, :cond_3

    neg-int v3, v10

    :goto_2
    iput v3, v1, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 1334
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1340
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private repost()V
    .locals 3

    .prologue
    .line 1701
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1702
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1703
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1704
    return-void
.end method

.method private restoreComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 1707
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

    .line 1708
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$37;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$37;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallRestoreComment;->setCallback(Lcom/vkontakte/android/api/WallRestoreComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1728
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1729
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1730
    return-void
.end method

.method private saveRepostComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "newComment"    # Ljava/lang/String;

    .prologue
    .line 923
    new-instance v0, Lcom/vkontakte/android/api/WallEdit;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p1}, Lcom/vkontakte/android/api/WallEdit;-><init>(IILjava/lang/String;)V

    .line 924
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$22;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$22;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallEdit;->setCallback(Lcom/vkontakte/android/api/WallEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 951
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 952
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 953
    return-void
.end method

.method private sendComment()V
    .locals 12

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*((?:id|club)[0-9-]+) \\(([^\\)]+)\\)"

    const-string v2, "[$1|$2]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1216
    .local v9, "_txt":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1217
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

    .line 1218
    const/4 v8, 0x1

    .line 1219
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

    .line 1221
    :cond_0
    move v11, v8

    .line 1222
    .local v11, "r":Z
    move-object v3, v9

    .line 1223
    .local v3, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v10

    .line 1224
    .local v10, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 1228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1301
    :goto_1
    return-void

    .line 1219
    .end local v3    # "txt":Ljava/lang/String;
    .end local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v11    # "r":Z
    :cond_1
    const-string v0, "club"

    goto :goto_0

    .line 1229
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

    .line 1230
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$29;

    invoke-direct {v1, p0, v3, v10}, Lcom/vkontakte/android/fragments/PostViewFragment$29;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1299
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1300
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private showCommentActions(I)V
    .locals 8
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    .line 1005
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 1007
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f08008a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    const-string v4, "profile"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    const v4, 0x7f080061

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    const-string v4, "reply"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    const v4, 0x7f08010a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    const-string v4, "copy"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    iget-boolean v4, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v4, :cond_8

    const v4, 0x7f080124

    :goto_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    const-string v4, "like"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    iget v4, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v4, :cond_2

    .line 1018
    const v4, 0x7f080108

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    const-string v4, "liked"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
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

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v4

    if-le v4, v6, :cond_6

    .line 1022
    :cond_4
    const v4, 0x7f08007d

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    const-string v4, "delete"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_5

    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    if-ltz v4, :cond_5

    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_6

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v6, v1, Lcom/vkontakte/android/NewsComment;->time:I

    const v7, 0x15180

    add-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 1025
    const v4, 0x7f0800e0

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    const-string v4, "edit"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_6
    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_7

    .line 1030
    const v4, 0x7f0802d5

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    const-string v4, "report"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_9

    .line 1037
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1038
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/vkontakte/android/fragments/PostViewFragment$24;

    invoke-direct {v6, p0, v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$24;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v5, v4, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1115
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1015
    .end local v2    # "i":I
    :cond_8
    const v4, 0x7f080123

    goto/16 :goto_1

    .line 1034
    .restart local v2    # "i":I
    :cond_9
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updateButtons()V
    .locals 8

    .prologue
    const v7, 0x7f09015b

    const v6, 0x7f090158

    const v5, 0x7f09015c

    const v4, 0x7f090159

    const/4 v3, 0x0

    .line 1528
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v0, :cond_0

    .line 1529
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

    .line 1530
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1535
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1536
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1537
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1538
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0201b7

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1539
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1547
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v0, :cond_2

    .line 1548
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

    .line 1549
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1554
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1555
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1556
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1557
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1558
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1565
    :goto_3
    return-void

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1533
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    .line 1541
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1542
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1543
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1544
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1551
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_2

    .line 1560
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1561
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1562
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1563
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

    .line 957
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 961
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 967
    return-void
.end method

.method private updateLikePhotos()V
    .locals 4

    .prologue
    .line 970
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$23;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$23;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1001
    const-wide/16 v2, 0x64

    .line 970
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1002
    return-void
.end method

.method private updateList()V
    .locals 4

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$30;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$30;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1360
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$31;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$31;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1364
    const-wide/16 v2, 0x190

    .line 1360
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1365
    return-void
.end method

.method private updatePaddings()V
    .locals 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 723
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->narrowScreen:Z

    .line 724
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateHeaderBackground()V

    .line 725
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    .line 726
    return-void
.end method

.method private waitAndSendComment()V
    .locals 4

    .prologue
    .line 1193
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1194
    .local v2, "progress":Landroid/app/ProgressDialog;
    const v3, 0x7f08002a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1195
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1196
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1197
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1198
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$27;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V

    .line 1204
    .local v0, "onDone":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$28;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V

    .line 1210
    .local v1, "onFailed":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3, v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1211
    return-void
.end method


# virtual methods
.method public getImageAttachView(I)Landroid/view/View;
    .locals 5
    .param p1, "idx"    # I

    .prologue
    .line 697
    const/4 v1, 0x0

    .local v1, "cnt":I
    const/4 v2, 0x0

    .line 698
    .local v2, "i":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 705
    const/4 v2, 0x0

    .line 706
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 713
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 698
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 699
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_2

    .line 700
    if-ne v1, p1, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    const v4, 0x7f090153

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 701
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 703
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 707
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v4, :cond_5

    .line 708
    if-ne v1, p1, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    const v4, 0x7f090156

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 709
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 711
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1326
    iget-wide v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->lastUpdated:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

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

    .line 1328
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 729
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 730
    const/16 v9, 0x2710

    if-le p1, v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v9, p1, p2, p3}, Lcom/vkontakte/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 731
    :cond_0
    const/16 v9, 0x10e8

    if-ne p1, v9, :cond_2

    const/4 v9, -0x1

    if-eq p2, v9, :cond_1

    const/4 v9, 0x1

    if-ne p2, v9, :cond_2

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    instance-of v9, v9, Lcom/vkontakte/android/FragmentWrapperActivity;

    if-eqz v9, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 735
    :cond_2
    const/16 v9, 0x10e9

    if-ne p1, v9, :cond_4

    const/4 v9, -0x1

    if-ne p2, v9, :cond_4

    .line 736
    const-string v9, "comment"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 737
    .local v1, "ce":Lcom/vkontakte/android/NewsEntry;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 776
    .end local v1    # "ce":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    :goto_0
    return-void

    .line 737
    .restart local v1    # "ce":Lcom/vkontakte/android/NewsEntry;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsComment;

    .line 738
    .local v2, "comm":Lcom/vkontakte/android/NewsComment;
    iget v10, v2, Lcom/vkontakte/android/NewsComment;->cid:I

    iget v11, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v10, v11, :cond_3

    .line 739
    iget-object v9, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 740
    iget-object v9, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iput-object v9, v2, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 741
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 742
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/high16 v10, 0x42be0000    # 95.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    sub-int v8, v9, v10

    .line 743
    .local v8, "tSize":I
    const/16 v9, 0x25c

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 744
    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 748
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 749
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 751
    const-string v9, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 752
    .local v5, "ptn1":Ljava/util/regex/Pattern;
    const-string v9, "\\[id(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 753
    .local v6, "ptn2":Ljava/util/regex/Pattern;
    const-string v9, "\\[club(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 755
    .local v7, "ptn3":Ljava/util/regex/Pattern;
    iget-object v9, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 756
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_7

    .line 760
    iget-object v9, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 761
    :goto_3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_8

    .line 765
    iget-object v9, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 766
    :goto_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_9

    .line 771
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    goto/16 :goto_0

    .line 744
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "ptn1":Ljava/util/regex/Pattern;
    .end local v6    # "ptn2":Ljava/util/regex/Pattern;
    .end local v7    # "ptn3":Ljava/util/regex/Pattern;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 745
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    int-to-float v10, v8

    const v11, 0x3f2a7efa    # 0.666f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v2, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v8, v10, v11}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto :goto_1

    .line 757
    .end local v0    # "c":Lcom/vkontakte/android/NewsComment;
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v5    # "ptn1":Ljava/util/regex/Pattern;
    .restart local v6    # "ptn2":Ljava/util/regex/Pattern;
    .restart local v7    # "ptn3":Ljava/util/regex/Pattern;
    :cond_7
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "vkontakte://profile/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 762
    :cond_8
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "vkontakte://profile/-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 767
    :cond_9
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "vklink://view/?"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v9, v2, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 44
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 189
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "entry"

    invoke-virtual/range {v37 .. v38}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v37, v0

    if-nez v37, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 193
    :cond_0
    const-string v15, ""

    .line 194
    .local v15, "ln":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    if-nez v37, :cond_3

    .line 195
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, "wall"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 203
    :cond_1
    :goto_0
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 204
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "type"

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->type:I

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v27

    .line 208
    .local v27, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 209
    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    .line 212
    const v37, 0x7f08002e

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 221
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    if-nez v37, :cond_2

    .line 222
    const-string v37, "view_posts"

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->collapse()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->unique()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v37

    const-string v38, "post_ids"

    new-instance v39, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "_"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v38

    const-string v39, "repost_ids"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v40, 0x20

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-eqz v37, :cond_8

    new-instance v37, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "_"

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    :goto_2
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->commit()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    .line 225
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    if-eqz v37, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_9

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    .line 663
    :goto_3
    return-void

    .line 196
    .end local v27    # "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_4

    .line 197
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, "video"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 198
    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_5

    .line 199
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, "photo"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 200
    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1

    .line 201
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, "topic"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 215
    .restart local v27    # "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 216
    const v37, 0x7f080030

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 219
    :cond_7
    const v37, 0x7f080046

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_1

    .line 222
    :cond_8
    const/16 v37, 0x0

    goto/16 :goto_2

    .line 230
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "comment"

    invoke-virtual/range {v37 .. v38}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    .line 232
    sget-object v37, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 233
    .local v19, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v37, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    const/high16 v38, 0x40a00000    # 5.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    mul-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    sub-int v30, v37, v38

    .line 234
    .local v30, "tSize":I
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    const v38, 0x3f2a7efa    # 0.666f

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v0, v30

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 236
    new-instance v37, Lcom/vkontakte/android/fragments/PostViewFragment$2;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    new-instance v37, Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 252
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, -0x1

    const/16 v38, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    .local v17, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v37, 0x3f800000    # 1.0f

    move/from16 v0, v37

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 257
    new-instance v37, Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v39, v0

    const v40, 0x7f020186

    const/16 v41, 0x0

    invoke-direct/range {v37 .. v41}, Lcom/vkontakte/android/EmojiPopup;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v38, v0

    new-instance v39, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x1

    const/16 v41, -0x1

    const/high16 v42, 0x3f800000    # 1.0f

    invoke-direct/range {v39 .. v42}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v37 .. v39}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 262
    new-instance v37, Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 264
    new-instance v28, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 265
    .local v28, "shadow":Landroid/view/View;
    const v37, 0x7f0200b6

    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 266
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, -0x1

    const/high16 v38, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    move-object/from16 v0, v16

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v37, -0x40000000    # -2.0f

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const v38, 0x7f0901ff

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/high16 v38, 0x10000000

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 274
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "shadow":Landroid/view/View;
    :cond_a
    const v37, 0x7f030074

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    new-instance v38, Landroid/graphics/drawable/ColorDrawable;

    const v39, -0x1a1a1b

    invoke-direct/range {v38 .. v39}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/high16 v38, 0x3f800000    # 1.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v37 .. v40}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const v38, -0x1f1f20

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setHeaderDividersEnabled(Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setFooterDividersEnabled(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const v38, 0x7f0200e6

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 285
    sget v37, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v38, 0xb

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_b

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 289
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setFromTop(Z)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "is_admin"

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    if-nez v37, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x40

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-nez v37, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v37, v0

    sget v38, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v37, v0

    sget v38, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v37, v0

    if-eqz v37, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v37, v0

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    const/16 v37, 0x0

    :goto_4
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090152

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v37

    const-string v38, "fontSize"

    const-string v39, "0"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 295
    .local v14, "k":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090155

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x1

    const/high16 v39, 0x41800000    # 16.0f

    int-to-float v0, v14

    move/from16 v40, v0

    const/high16 v41, 0x40000000    # 2.0f

    mul-float v40, v40, v41

    add-float v39, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090152

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x1

    const/high16 v39, 0x41800000    # 16.0f

    int-to-float v0, v14

    move/from16 v40, v0

    const/high16 v41, 0x40000000    # 2.0f

    mul-float v40, v40, v41

    add-float v39, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_1e

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090155

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "\n"

    const-string v40, "<br/>"

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v38

    check-cast v38, Landroid/text/Spannable;

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090155

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 309
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v32

    .line 310
    .local v32, "time":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 311
    .local v21, "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x200

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 312
    new-instance v8, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 313
    .local v8, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v37

    const-string v38, "F"

    invoke-virtual/range {v37 .. v38}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v29

    .line 314
    .local v29, "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0201b5

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 315
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v39

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v40

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 316
    new-instance v37, Landroid/text/style/ImageSpan;

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v0, v9, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 317
    const-string v37, " "

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 318
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 319
    move-object/from16 v21, v8

    .line 321
    .end local v8    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v29    # "sp":Landroid/text/Spannable;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->platform:I

    move/from16 v37, v0

    if-eqz v37, :cond_e

    .line 322
    new-instance v8, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 323
    .restart local v8    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v37

    const-string v38, "F"

    invoke-virtual/range {v37 .. v38}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v29

    .line 324
    .restart local v29    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/vkontakte/android/NewsEntry;->getPlatformIconResource()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 325
    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v39

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v40

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    new-instance v37, Landroid/text/style/ImageSpan;

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v0, v9, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 327
    const-string v37, " "

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 328
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 329
    move-object/from16 v32, v8

    .line 331
    .end local v8    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v29    # "sp":Landroid/text/Spannable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090151

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090150

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/ui/FlowLayout;

    const/high16 v38, 0x40a00000    # 5.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_10

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const/16 v20, 0x0

    .local v20, "nPhotos":I
    const/16 v25, 0x0

    .line 340
    .local v25, "pi":I
    const/16 v31, 0x0

    .line 341
    .local v31, "thumb":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_f
    :goto_6
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_1f

    .line 342
    const/4 v11, 0x0

    .line 343
    .local v11, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_7
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-nez v37, :cond_20

    .line 403
    if-eqz v31, :cond_10

    .line 404
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 405
    .local v16, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    if-eqz v16, :cond_10

    .line 406
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 407
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .end local v11    # "i":I
    .end local v16    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v20    # "nPhotos":I
    .end local v25    # "pi":I
    .end local v31    # "thumb":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_12

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090153

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 413
    const/16 v20, 0x0

    .restart local v20    # "nPhotos":I
    const/16 v25, 0x0

    .line 414
    .restart local v25    # "pi":I
    const/16 v31, 0x0

    .line 415
    .restart local v31    # "thumb":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_11
    :goto_8
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_2d

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :goto_9
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-nez v37, :cond_2e

    .line 437
    if-eqz v31, :cond_12

    .line 438
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 439
    .restart local v16    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    if-eqz v16, :cond_12

    .line 440
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 441
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    .end local v16    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v20    # "nPhotos":I
    .end local v25    # "pi":I
    .end local v31    # "thumb":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f09014e

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$5;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$5;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move/from16 v37, v0

    if-eqz v37, :cond_17

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090154

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090155

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 458
    .local v26, "pt":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingLeft()I

    move-result v37

    const/16 v38, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingRight()I

    move-result v39

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v40

    move-object/from16 v0, v26

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090154

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$6;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$6;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f0901e0

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const/16 v33, 0x0

    .line 476
    .local v33, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_13

    .line 477
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, ", "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f08002e

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 479
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_14

    .line 480
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, ", "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f080030

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 482
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_15

    .line 483
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, " "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f08011b

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 485
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f0901e2

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    new-instance v39, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    move/from16 v38, v0

    if-lez v38, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v38

    :goto_a
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v33, :cond_16

    const-string v33, ""

    .end local v33    # "type":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_17

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    const v38, 0x7f090152

    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    const v38, 0x7f090152

    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "\n"

    const-string v40, "<br/>"

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v38

    check-cast v38, Landroid/text/Spannable;

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    .end local v26    # "pt":Landroid/view/View;
    :cond_17
    const v37, 0x7f03004e

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v37, v0

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v37, v0

    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v39, -0x1

    const/high16 v40, 0x422c0000    # 43.0f

    invoke-static/range {v40 .. v40}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v40

    invoke-direct/range {v38 .. v40}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/LoadMoreCommentsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v37, v0

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$7;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$7;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/LoadMoreCommentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x800

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-nez v37, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x1000

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-eqz v37, :cond_33

    .line 506
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f09014d

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090157

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :goto_b
    new-instance v37, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-direct/range {v37 .. v40}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const v38, 0x7f090200

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$8;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$8;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x800

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-nez v37, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x1000

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-nez v37, :cond_19

    .line 529
    new-instance v37, Landroid/widget/ProgressBar;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    .line 530
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v37, 0x41f00000    # 30.0f

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    const/high16 v38, 0x41f00000    # 30.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    move-object/from16 v0, v22

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 531
    .local v22, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    .end local v22    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$9;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$9;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$10;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$10;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    const v38, 0x7f09015a

    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 566
    .local v18, "lpwrap":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_c
    const/16 v37, 0xa

    move/from16 v0, v37

    if-lt v11, v0, :cond_34

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090158

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$11;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$11;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f09015b

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$12;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$12;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f09015a

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$13;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$13;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadVideoInfo()V

    .line 607
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->setFragment(Lcom/actionbarsherlock/app/SherlockFragment;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lcom/vkontakte/android/ui/WriteBar;->setUploadType(II)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "comment"

    invoke-virtual/range {v37 .. v38}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v37

    if-eqz v37, :cond_1b

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/vkontakte/android/ui/WriteBar;->focus()V

    .line 614
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Lcom/vkontakte/android/ui/WriteBar;->setAttachLimits(IZ)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const v38, 0x7f090201

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$14;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$14;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const v38, 0x7f090201

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    const v38, 0x7f020186

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const v38, 0x7f090201

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$15;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$15;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v37, v0

    const v38, 0x7f0901ff

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/EditText;

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$16;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$16;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 645
    const v37, 0x7f03003f

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/ErrorView;->setIsInline(Z)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v37, v0

    new-instance v38, Lcom/vkontakte/android/fragments/PostViewFragment$17;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$17;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v37, v0

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    move/from16 v37, v0

    if-eqz v37, :cond_1c

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v37, v0

    const/16 v38, 0x3e7

    invoke-virtual/range {v37 .. v38}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 661
    :cond_1c
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->setHasOptionsMenu(Z)V

    .line 662
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updatePaddings()V

    goto/16 :goto_3

    .line 291
    .end local v11    # "i":I
    .end local v14    # "k":I
    .end local v18    # "lpwrap":Landroid/widget/LinearLayout;
    .end local v21    # "name":Ljava/lang/CharSequence;
    .end local v32    # "time":Ljava/lang/CharSequence;
    :cond_1d
    const/16 v37, 0x1

    goto/16 :goto_4

    .line 301
    .restart local v14    # "k":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090155

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/16 v38, 0x8

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_c

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 304
    .local v34, "v":Landroid/view/View;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, -0x1

    const/16 v38, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v37, 0x40e00000    # 7.0f

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    const/high16 v38, 0x40e00000    # 7.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    const/high16 v39, 0x40e00000    # 7.0f

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v39

    const/high16 v40, 0x40e00000    # 7.0f

    invoke-static/range {v40 .. v40}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v40

    move-object/from16 v0, v16

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 341
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "v":Landroid/view/View;
    .restart local v20    # "nPhotos":I
    .restart local v21    # "name":Ljava/lang/CharSequence;
    .restart local v25    # "pi":I
    .restart local v31    # "thumb":Landroid/view/View;
    .restart local v32    # "time":Ljava/lang/CharSequence;
    :cond_1f
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_f

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v38, v0

    if-eqz v38, :cond_f

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_6

    .line 343
    .restart local v11    # "i":I
    :cond_20
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 344
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    .line 345
    .local v7, "attView":Landroid/view/View;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v37, v0

    if-eqz v37, :cond_22

    move-object/from16 v37, v6

    .line 346
    check-cast v37, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_21

    .line 347
    new-instance v24, Lcom/vkontakte/android/Photo;

    move-object/from16 v37, v6

    check-cast v37, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    .line 348
    .local v24, "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    move/from16 v12, v25

    .line 350
    .local v12, "idx":I
    new-instance v37, Lcom/vkontakte/android/fragments/PostViewFragment$3;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/vkontakte/android/fragments/PostViewFragment$3;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    add-int/lit8 v25, v25, 0x1

    .line 358
    .end local v12    # "idx":I
    .end local v24    # "photo":Lcom/vkontakte/android/Photo;
    :cond_21
    const/16 v37, 0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-gt v0, v1, :cond_22

    instance-of v0, v7, Landroid/widget/ImageView;

    move/from16 v37, v0

    if-eqz v37, :cond_22

    move-object/from16 v37, v7

    check-cast v37, Landroid/widget/ImageView;

    sget-object v38, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 361
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_26

    .line 362
    :cond_23
    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v37, v0

    if-eqz v37, :cond_24

    move-object/from16 v37, v6

    .line 363
    check-cast v37, Lcom/vkontakte/android/VideoAttachment;

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/VideoAttachment;->getView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v7

    .line 364
    const v37, 0x7f090050

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 365
    const v37, 0x7f090053

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    const/high16 v38, -0x1000000

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setBackgroundColor(I)V

    .line 371
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v35

    .line 372
    .local v35, "vsize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 373
    .local v5, "a":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/ViewGroup;

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->videoBottomPadding:Z

    move/from16 v37, v0

    if-nez v37, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v0

    const/16 v43, 0x2

    move/from16 v0, v37

    move/from16 v1, v43

    if-ne v0, v1, :cond_29

    :cond_25
    const/high16 v37, 0x40e00000    # 7.0f

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    :goto_d
    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f09014e

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 378
    .local v23, "pb":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v38, v0

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2a

    const/16 v38, 0x3

    :goto_e
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090155

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 381
    instance-of v0, v7, Lcom/vkontakte/android/VideoAttachView;

    move/from16 v37, v0

    if-eqz v37, :cond_26

    .line 382
    sget-boolean v37, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v37, :cond_2b

    const/16 v37, 0x280

    :goto_f
    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    .line 383
    .local v36, "w":I
    move/from16 v0, v36

    move/from16 v1, v35

    if-eq v0, v1, :cond_2c

    const/16 v37, 0x1

    :goto_10
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/PostViewFragment;->videoBottomPadding:Z

    .line 384
    new-instance v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v10, v0, v1}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 385
    .local v10, "flp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    move/from16 v0, v36

    iput v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 386
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x3f400000    # 0.75f

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 387
    const/16 v37, 0x1

    move/from16 v0, v37

    iput-boolean v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->center:Z

    .line 388
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    const v37, 0x7f090060

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v38, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v40, v0

    iget v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    move/from16 v41, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    .end local v5    # "a":Landroid/view/View;
    .end local v10    # "flp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v23    # "pb":Landroid/view/View;
    .end local v35    # "vsize":I
    .end local v36    # "w":I
    :cond_26
    instance-of v0, v6, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v37, v0

    if-eqz v37, :cond_27

    move-object/from16 v31, v7

    .line 395
    :cond_27
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v37, v0

    if-eqz v37, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    add-int/lit8 v38, v11, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v11, 0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v37, v0

    if-nez v37, :cond_28

    .line 396
    new-instance v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v10}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 397
    .restart local v10    # "flp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/16 v37, 0x1

    move/from16 v0, v37

    iput-boolean v0, v10, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 398
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    .end local v10    # "flp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v38, 0x7f090156

    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 375
    .restart local v5    # "a":Landroid/view/View;
    .restart local v35    # "vsize":I
    :cond_29
    const/16 v37, 0x0

    goto/16 :goto_d

    .line 379
    .restart local v23    # "pb":Landroid/view/View;
    :cond_2a
    const/16 v38, 0x0

    goto/16 :goto_e

    .line 382
    :cond_2b
    const/16 v37, 0x140

    goto/16 :goto_f

    .line 383
    .restart local v36    # "w":I
    :cond_2c
    const/16 v37, 0x0

    goto/16 :goto_10

    .line 415
    .end local v5    # "a":Landroid/view/View;
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v7    # "attView":Landroid/view/View;
    .end local v11    # "i":I
    .end local v23    # "pb":Landroid/view/View;
    .end local v35    # "vsize":I
    .end local v36    # "w":I
    :cond_2d
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v38, v0

    if-eqz v38, :cond_11

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v38, v0

    if-eqz v38, :cond_11

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 416
    :cond_2e
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 417
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    .line 418
    .restart local v7    # "attView":Landroid/view/View;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v37, v0

    if-eqz v37, :cond_30

    move-object/from16 v37, v6

    .line 419
    check-cast v37, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2f

    .line 420
    new-instance v24, Lcom/vkontakte/android/Photo;

    move-object/from16 v37, v6

    check-cast v37, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    .line 421
    .restart local v24    # "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->repostPhotos:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    move/from16 v12, v25

    .line 423
    .restart local v12    # "idx":I
    new-instance v37, Lcom/vkontakte/android/fragments/PostViewFragment$4;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/vkontakte/android/fragments/PostViewFragment$4;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    add-int/lit8 v25, v25, 0x1

    .line 431
    .end local v12    # "idx":I
    .end local v24    # "photo":Lcom/vkontakte/android/Photo;
    :cond_2f
    const/16 v37, 0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-gt v0, v1, :cond_30

    instance-of v0, v7, Landroid/widget/ImageView;

    move/from16 v37, v0

    if-eqz v37, :cond_30

    move-object/from16 v37, v7

    check-cast v37, Landroid/widget/ImageView;

    sget-object v39, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 434
    :cond_30
    instance-of v0, v6, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v37, v0

    if-eqz v37, :cond_31

    move-object/from16 v31, v7

    .line 435
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->headerView:Landroid/view/View;

    move-object/from16 v37, v0

    const v39, 0x7f090153

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    .line 485
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v7    # "attView":Landroid/view/View;
    .end local v20    # "nPhotos":I
    .end local v25    # "pi":I
    .end local v31    # "thumb":Landroid/view/View;
    .restart local v26    # "pt":Landroid/view/View;
    .restart local v33    # "type":Ljava/lang/String;
    :cond_32
    const-string v38, ""

    goto/16 :goto_a

    .line 510
    .end local v26    # "pt":Landroid/view/View;
    .end local v33    # "type":Ljava/lang/String;
    :cond_33
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    goto/16 :goto_b

    .line 567
    .restart local v11    # "i":I
    .restart local v18    # "lpwrap":Landroid/widget/LinearLayout;
    :cond_34
    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 568
    .local v13, "iv":Landroid/widget/ImageView;
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    const v37, 0x7f02027c

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v37, 0x420c0000    # 35.0f

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    const/high16 v38, 0x420c0000    # 35.0f

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v38

    move-object/from16 v0, v16

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 571
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v37, 0x40800000    # 4.0f

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 572
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 718
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updatePaddings()V

    .line 719
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 666
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 667
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 668
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 670
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/16 v9, 0x1000

    const/16 v8, 0x800

    const v7, 0x7f090215

    const/4 v0, 0x0

    .line 779
    const v1, 0x7f0e000e

    invoke-virtual {p2, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 780
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    if-eqz v1, :cond_6

    .line 781
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v1, :cond_0

    .line 782
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v1, :cond_3

    .line 785
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 793
    :cond_1
    :goto_0
    const v1, 0x7f090224

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 794
    const v1, 0x7f09001f

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 795
    const v1, 0x7f090219

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 796
    const v0, 0x7f090223

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 797
    return-void

    .line 787
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/32 v5, 0x15180

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto/16 :goto_0

    .line 790
    :cond_6
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 791
    const v1, 0x7f09020c

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 673
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 675
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 678
    :cond_0
    return-void

    .line 676
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 804
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f09020c

    if-ne v6, v7, :cond_4

    .line 805
    const v3, 0x7f08007f

    .line 806
    .local v3, "msg":I
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v10, :cond_0

    .line 807
    const v3, 0x7f08022d

    .line 808
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v8, :cond_1

    .line 809
    const v3, 0x7f080170

    .line 810
    :cond_1
    new-instance v6, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08007e

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 811
    const v7, 0x7f08004e

    new-instance v8, Lcom/vkontakte/android/fragments/PostViewFragment$18;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$18;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 816
    const v7, 0x7f08004f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 817
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_2

    const v5, 0x1080027

    :cond_2
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 818
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 871
    .end local v3    # "msg":I
    :cond_3
    :goto_0
    return v10

    .line 819
    :cond_4
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f090215

    if-ne v6, v7, :cond_7

    .line 820
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 821
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 825
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "edit"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 826
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v5, :cond_6

    .line 827
    const-string v5, "public"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 828
    :cond_6
    const/16 v5, 0x10e8

    invoke-virtual {p0, v1, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 829
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f090027

    if-ne v6, v7, :cond_c

    .line 830
    const-string v2, "http://vk.com/"

    .line 831
    .local v2, "ln":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v6, :cond_9

    .line 832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "wall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 840
    :cond_8
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 841
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 842
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 843
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0801cb

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 833
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    :cond_9
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v8, :cond_a

    .line 834
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 835
    goto :goto_1

    :cond_a
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v10, :cond_b

    .line 836
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 837
    goto :goto_1

    :cond_b
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 838
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "topic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 844
    .end local v2    # "ln":Ljava/lang/String;
    :cond_c
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f090224

    if-ne v6, v7, :cond_f

    .line 845
    const-string v4, "wall"

    .line 846
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v5, v10, :cond_d

    .line 847
    const-string v4, "photo"

    .line 848
    :cond_d
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v5, v8, :cond_e

    .line 849
    const-string v4, "video"

    .line 850
    :cond_e
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "vkontakte://vk.com/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v9, v9, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v9, v9, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 851
    .end local v4    # "type":Ljava/lang/String;
    :cond_f
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f09001f

    if-ne v6, v7, :cond_10

    .line 852
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v7, 0x35

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    sub-int/2addr v8, v9

    const v9, 0x7f02007c

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    goto/16 :goto_0

    .line 853
    :cond_10
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f090219

    if-ne v5, v6, :cond_13

    .line 854
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "itemID"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    const-string v5, "ownerID"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    const-string v4, "post"

    .line 858
    .restart local v4    # "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v5, v10, :cond_11

    .line 859
    const-string v4, "photo"

    .line 860
    :cond_11
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v5, v8, :cond_12

    .line 861
    const-string v4, "video"

    .line 862
    :cond_12
    const-string v5, "type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 864
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "type":Ljava/lang/String;
    :cond_13
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f090223

    if-ne v5, v6, :cond_3

    .line 865
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/PostViewFragment$19;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$19;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/data/Posts;->publishPostponed(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 683
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 685
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 801
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1321
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    .line 1322
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 689
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 690
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 2026
    return-void
.end method
