.class public Lcom/vkontakte/android/fragments/PostViewFragment;
.super Landroid/app/Fragment;
.source "PostViewFragment.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;,
        Lcom/vkontakte/android/fragments/PostViewFragment$ViewListAdapter;,
        Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/PostViewFragment$NewsAdapter;,
        Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;,
        Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;
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

.field private adapter:Lcom/vkontakte/android/ui/MergeAdapter;

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

.field private commentsProgress:Landroid/widget/FrameLayout;

.field private contentView:Landroid/widget/LinearLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private e:Lcom/vkontakte/android/NewsEntry;

.field private emojiPopup:Lcom/vkontakte/android/EmojiPopup;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdated:J

.field private likeAnim:Landroid/animation/ObjectAnimator;

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

.field private likesView:Landroid/view/View;

.field private liking:Z

.field private list:Landroid/widget/ListView;

.field private loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

.field private loadingComments:Z

.field private maxLikePhotos:I

.field private maxLikeVisible:I

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

.field private postItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private profileOnClick:Landroid/view/View$OnClickListener;

.field private ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private replyTo:I

.field private replyToName:Ljava/lang/String;

.field private replyToRName:Ljava/lang/String;

.field private replyToUid:I

.field private repostOnClick:Landroid/view/View$OnClickListener;

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

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    .line 148
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    .line 151
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    .line 152
    iput v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    iput v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    .line 153
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    .line 154
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->photos:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->repostPhotos:Ljava/util/ArrayList;

    .line 158
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->type:I

    .line 159
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->videoBottomPadding:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    .line 163
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    .line 164
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikePhotos:I

    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->maxLikeVisible:I

    .line 165
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 191
    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 193
    iput v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$2;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->profileOnClick:Landroid/view/View$OnClickListener;

    .line 205
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$3;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->repostOnClick:Landroid/view/View$OnClickListener;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->waitAndSendComment()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->sendComment()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->showCommentActions(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->like(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->repost()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->deletePost()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->animateLikePhotos()V

    return-void
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->saveRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    return v0
.end method

.method static synthetic access$2502(Lcom/vkontakte/android/fragments/PostViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    return p1
.end method

.method static synthetic access$2602(Lcom/vkontakte/android/fragments/PostViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    return p1
.end method

.method static synthetic access$2700(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->likeComment(Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->deleteComment(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->editComment(Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$3400(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/MergeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateHeaderBackground()V

    return-void
.end method

.method static synthetic access$3600(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/vkontakte/android/fragments/PostViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/vkontakte/android/fragments/PostViewFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # J

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->lastUpdated:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/StickerAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->sendStickerComment(Lcom/vkontakte/android/StickerAttachment;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    return-void
.end method

.method static synthetic access$4100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/vkontakte/android/fragments/PostViewFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/vkontakte/android/fragments/PostViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    return v0
.end method

.method static synthetic access$4402(Lcom/vkontakte/android/fragments/PostViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    return p1
.end method

.method static synthetic access$4500(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->highlightComment(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/vkontakte/android/fragments/PostViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->restoreComment(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->profileOnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->repostOnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    return-void
.end method

.method private animateLikePhotos()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x12c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1452
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v2, 0x7f08013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoStripView;

    .line 1453
    .local v0, "lpwrap":Lcom/vkontakte/android/ui/PhotoStripView;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1455
    :cond_0
    const-string v1, "offset"

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    .line 1456
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$33;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$33;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1461
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1472
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1464
    :cond_2
    const-string v1, "offset"

    new-array v2, v3, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    .line 1465
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$34;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$34;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1470
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private broadcastUpdate()V
    .locals 10

    .prologue
    .line 1179
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v0, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1180
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1183
    const-string v0, "comments"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1184
    const-string v0, "retweets"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1185
    const-string v0, "likes"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1186
    const-string v0, "liked"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1187
    const-string v0, "retweeted"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1189
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

    .line 1190
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 993
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

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$25;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$25;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDeleteComment;->setCallback(Lcom/vkontakte/android/api/WallDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1019
    return-void
.end method

.method private deletePost()V
    .locals 4

    .prologue
    .line 735
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$19;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 761
    return-void
.end method

.method private editComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 4
    .param p1, "comm"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    .line 1022
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 1023
    .local v0, "ce":Lcom/vkontakte/android/NewsEntry;
    iget-object v2, p1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 1024
    iget-object v2, p1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 1025
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 1026
    iget v2, p1, Lcom/vkontakte/android/NewsComment;->cid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 1027
    iget v2, p1, Lcom/vkontakte/android/NewsComment;->uid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 1028
    const/4 v2, 0x5

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 1029
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1038
    const-string v2, "wall"

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 1042
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1043
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1044
    const/16 v2, 0x10e9

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1045
    return-void

    .line 1031
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v2, "photos"

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    goto :goto_0

    .line 1034
    :pswitch_1
    const-string v2, "video"

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    goto :goto_0

    .line 1029
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
    .line 764
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 765
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 766
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 767
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 768
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 769
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0275

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$20;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$20;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 780
    return-void
.end method

.method private highlightComment(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$32;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$32;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1405
    return-void
.end method

.method private like(Z)V
    .locals 8
    .param p1, "liked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1475
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1476
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1478
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->broadcastUpdate()V

    .line 1479
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->animateLikePhotos()V

    .line 1480
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    .line 1481
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    if-eqz v0, :cond_1

    .line 1528
    :goto_1
    return-void

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 1482
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->liking:Z

    .line 1483
    const-string v7, ""

    .line 1484
    .local v7, "akey":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1485
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    iget-object v7, v0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v0, v2, :cond_3

    .line 1487
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v7, v0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 1488
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

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$35;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$35;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private likeComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 8
    .param p1, "comm"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    const/4 v4, 0x0

    .line 974
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-boolean v1, p1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v3, p1, Lcom/vkontakte/android/NewsComment;->cid:I

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$24;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$24;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 990
    return-void

    :cond_0
    move v1, v4

    .line 974
    goto :goto_0
.end method

.method private loadComments(Z)V
    .locals 9
    .param p1, "clear"    # Z

    .prologue
    .line 1235
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    if-eqz v0, :cond_0

    .line 1384
    :goto_0
    return-void

    .line 1237
    :cond_0
    if-eqz p1, :cond_5

    const/4 v8, 0x0

    .line 1238
    .local v8, "csize":I
    :goto_1
    const/4 v3, 0x0

    .line 1243
    .local v3, "offset":I
    const/16 v4, 0xa

    .line 1244
    .local v4, "count":I
    if-nez p1, :cond_1

    .line 1245
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1246
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v0, v8

    sub-int v3, v0, v4

    .line 1248
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    if-eqz v0, :cond_2

    .line 1249
    const/16 v4, 0x32

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1252
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1255
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    .line 1259
    :cond_4
    move v3, v8

    .line 1261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadingComments:Z

    .line 1262
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

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$31;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$31;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1237
    .end local v3    # "offset":I
    .end local v4    # "count":I
    .end local v8    # "csize":I
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_1
.end method

.method private loadVideoInfo()V
    .locals 3

    .prologue
    .line 1563
    new-instance v0, Lcom/vkontakte/android/api/VideoGetInfo;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoGetInfo;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$37;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$37;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetInfo;->setCallback(Lcom/vkontakte/android/api/VideoGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1598
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
    .line 1199
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "photo_viewer"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    :goto_0
    return-void

    .line 1201
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

    if-ge v8, v1, :cond_2

    .line 1202
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1203
    .local v11, "v":Landroid/view/View;
    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    .line 1204
    .local v9, "pos":[I
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1205
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

    .line 1206
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    invoke-static {v11, v1}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v10, v1, Landroid/graphics/Point;->y:I

    .line 1207
    .local v10, "top":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    if-gez v10, :cond_1

    neg-int v3, v10

    :goto_2
    iput v3, v1, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 1201
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1207
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .end local v9    # "pos":[I
    .end local v10    # "top":I
    .end local v11    # "v":Landroid/view/View;
    :cond_2
    move-object/from16 v1, p2

    .line 1209
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1210
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    instance-of v1, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 1211
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 1213
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1214
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "orientation"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1215
    const-string v1, "list"

    move-object/from16 v0, p4

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1216
    const-string v1, "position"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1217
    const-string v1, "PhotoViewerFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto/16 :goto_0

    .line 1203
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private repost()V
    .locals 3

    .prologue
    .line 1531
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1532
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1533
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1534
    return-void
.end method

.method private restoreComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 1537
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

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$36;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$36;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallRestoreComment;->setCallback(Lcom/vkontakte/android/api/WallRestoreComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1560
    return-void
.end method

.method private saveRepostComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "newComment"    # Ljava/lang/String;

    .prologue
    .line 783
    new-instance v0, Lcom/vkontakte/android/api/WallEdit;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p1}, Lcom/vkontakte/android/api/WallEdit;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$21;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment$21;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallEdit;->setCallback(Lcom/vkontakte/android/api/WallEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 813
    return-void
.end method

.method private sendComment()V
    .locals 8

    .prologue
    .line 1069
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\*((?:id|club)[0-9-]+) \\(([^\\)]+)\\)"

    const-string v7, "[$1|$2]"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1070
    .local v1, "_txt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1071
    .local v0, "_r":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1072
    const/4 v0, 0x1

    .line 1073
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    if-lez v5, :cond_1

    const-string v5, "id"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToUid:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "],"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    :cond_0
    move v3, v0

    .line 1076
    .local v3, "r":Z
    move-object v4, v1

    .line 1077
    .local v4, "txt":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    .line 1078
    .local v2, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/4 v5, 0x1

    invoke-direct {p0, v4, v2, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1079
    return-void

    .line 1073
    .end local v2    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v3    # "r":Z
    .end local v4    # "txt":Ljava/lang/String;
    :cond_1
    const-string v5, "club"

    goto :goto_0
.end method

.method private sendComment(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 8
    .param p1, "txt"    # Ljava/lang/String;
    .param p3, "clearCommentBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1090
    .local p2, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1091
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/WallAddComment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->replyTo:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallAddComment;-><init>(IILjava/lang/String;IILjava/util/List;Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$28;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/vkontakte/android/fragments/PostViewFragment$28;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;ZLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private sendStickerComment(Lcom/vkontakte/android/StickerAttachment;)V
    .locals 3
    .param p1, "att"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    const/4 v2, 0x0

    .line 1082
    const-string v0, ""

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vkontakte/android/Attachment;

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1083
    return-void
.end method

.method private showCommentActions(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    .line 858
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int p1, v4, v5

    .line 859
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 861
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f0d0218

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    const-string v4, "profile"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    const v4, 0x7f0d0261

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    const-string v4, "reply"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    const v4, 0x7f0d008e

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    const-string v4, "copy"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    iget-boolean v4, v1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v4, :cond_7

    const v4, 0x7f0d033e

    :goto_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    const-string v4, "like"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    iget v4, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v4, :cond_2

    .line 872
    const v4, 0x7f0d0151

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    const-string v4, "liked"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
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

    .line 876
    :cond_4
    const v4, 0x7f0d009d

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    const-string v4, "delete"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    iget-boolean v4, v1, Lcom/vkontakte/android/NewsComment;->canEdit:Z

    if-eqz v4, :cond_5

    .line 880
    const v4, 0x7f0d00b6

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    const-string v4, "edit"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_5
    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_6

    .line 886
    const v4, 0x7f0d0262

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    const-string v4, "report"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 890
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 869
    .end local v2    # "i":I
    :cond_7
    const v4, 0x7f0d0150

    goto/16 :goto_1

    .line 893
    .restart local v2    # "i":I
    :cond_8
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/vkontakte/android/fragments/PostViewFragment$23;

    invoke-direct {v6, p0, v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$23;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v5, v4, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private updateButtons()V
    .locals 8

    .prologue
    const v7, 0x7f08013c

    const v6, 0x7f080139

    const v5, 0x7f08013d

    const v4, 0x7f08013a

    const/4 v3, 0x0

    .line 1408
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1415
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1416
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1417
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020135

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1419
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1420
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoStripView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoStripView;->setOffset(F)V

    .line 1431
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v0, :cond_3

    .line 1432
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1438
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1439
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1440
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1441
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020138

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1442
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1449
    :goto_3
    return-void

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    .line 1423
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1424
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1425
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1426
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1427
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoStripView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoStripView;->setOffset(F)V

    goto/16 :goto_1

    .line 1435
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_2

    .line 1444
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1445
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1446
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020137

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1447
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3
.end method

.method private updateHeaderBackground()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_0
    return-void

    .line 817
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateLikePhotos()V
    .locals 4

    .prologue
    .line 821
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$22;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 855
    return-void
.end method

.method private updateList()V
    .locals 4

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$29;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$29;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1227
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$30;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$30;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1232
    return-void
.end method

.method private waitAndSendComment()V
    .locals 4

    .prologue
    .line 1048
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1049
    .local v2, "progress":Landroid/app/ProgressDialog;
    const v3, 0x7f0d0156

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1050
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1051
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1052
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1053
    new-instance v0, Lcom/vkontakte/android/fragments/PostViewFragment$26;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$26;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V

    .line 1059
    .local v0, "onDone":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$27;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$27;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V

    .line 1065
    .local v1, "onFailed":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3, v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1066
    return-void
.end method


# virtual methods
.method public getImageAttachView(I)Landroid/view/View;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 581
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 589
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 590
    const/16 v13, 0x2710

    move/from16 v0, p1

    if-le v0, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 591
    :cond_0
    const/16 v13, 0x10e8

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    .line 592
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/vkontakte/android/FragmentWrapperActivity;

    if-eqz v13, :cond_2

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 595
    :cond_2
    const/16 v13, 0x10e9

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_8

    .line 596
    const-string v13, "comment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    .line 597
    .local v4, "ce":Lcom/vkontakte/android/NewsEntry;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/NewsComment;

    .line 598
    .local v5, "comm":Lcom/vkontakte/android/NewsComment;
    iget v13, v5, Lcom/vkontakte/android/NewsComment;->cid:I

    iget v14, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v13, v14, :cond_3

    .line 599
    iget-object v13, v4, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v5, v13}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 600
    iget-object v13, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iput-object v13, v5, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 601
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 602
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    iget v13, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/high16 v14, 0x42be0000    # 95.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    sub-int v12, v13, v14

    .line 603
    .local v12, "tSize":I
    const/16 v13, 0x25c

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsComment;

    .line 605
    .local v3, "c":Lcom/vkontakte/android/NewsComment;
    int-to-float v13, v12

    const v14, 0x3f2a7efa    # 0.666f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iget-object v14, v5, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v12, v13, v14}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 608
    .end local v3    # "c":Lcom/vkontakte/android/NewsComment;
    :cond_4
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    .line 609
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    .line 611
    const-string v13, "((?:(?:http|https)://)?[a-zA-Z\ufffd-\ufffd\ufffd-\ufffd0-9-]+\\.[a-zA-Z\ufffd-\ufffd\ufffd-\ufffd]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 612
    .local v9, "ptn1":Ljava/util/regex/Pattern;
    const-string v13, "\\[id(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 613
    .local v10, "ptn2":Ljava/util/regex/Pattern;
    const-string v13, "\\[club(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 615
    .local v11, "ptn3":Ljava/util/regex/Pattern;
    iget-object v13, v4, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 616
    .local v7, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 617
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "vkontakte://profile/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :cond_5
    iget-object v13, v4, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 621
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 622
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "vkontakte://profile/-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 625
    :cond_6
    iget-object v13, v4, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 626
    :goto_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 627
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "vklink://view/?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v13, v5, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 631
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V

    .line 636
    .end local v4    # "ce":Lcom/vkontakte/android/NewsEntry;
    .end local v5    # "comm":Lcom/vkontakte/android/NewsComment;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "ptn1":Ljava/util/regex/Pattern;
    .end local v10    # "ptn2":Ljava/util/regex/Pattern;
    .end local v11    # "ptn3":Ljava/util/regex/Pattern;
    .end local v12    # "tSize":I
    :cond_8
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 25
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 223
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v3, v2, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 227
    :cond_0
    const-string v12, ""

    .line 228
    .local v12, "ln":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v2, :cond_3

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 237
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 238
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->type:I

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    .line 242
    .local v19, "sa":Landroid/app/Activity;
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 243
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 246
    const v2, 0x7f0d01ef

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 255
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v2, :cond_2

    .line 256
    const-string v2, "view_post"

    invoke-static {v2}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->collapse()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->unique()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v2

    const-string v3, "post_ids"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v3

    const-string v4, "repost_ids"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->commit()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    .line 259
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    .line 531
    :goto_3
    return-void

    .line 230
    .end local v19    # "sa":Landroid/app/Activity;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 232
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 234
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "topic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 249
    .restart local v19    # "sa":Landroid/app/Activity;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 250
    const v2, 0x7f0d0356

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 253
    :cond_7
    const v2, 0x7f0d0371

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_1

    .line 256
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 264
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "comment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    .line 266
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 267
    .local v16, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v21, v2, v3

    .line 268
    .local v21, "tSize":I
    move/from16 v0, v21

    int-to-float v2, v0

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 270
    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment$4;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 285
    new-instance v2, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 286
    new-instance v2, Lcom/vkontakte/android/ui/FixedScrollListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    .line 287
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v14, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v14, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v2, v14}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 292
    new-instance v2, Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    const v5, 0x7f020104

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/EmojiPopup;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$5;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/EmojiPopup;->setStickerClickListener(Lcom/vkontakte/android/EmojiPopup$StickerClickListener;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 303
    invoke-static/range {p1 .. p1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->allChildrenArePullable()Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v2

    const-class v3, Landroid/widget/AbsListView;

    new-instance v4, Lcom/vkontakte/android/ui/InverseAbsListViewDelegate;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/InverseAbsListViewDelegate;-><init>()V

    invoke-virtual {v2, v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->useViewDelegate(Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->ptr:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setInverse(Z)V

    .line 310
    new-instance v2, Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/vkontakte/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 312
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 313
    .local v20, "shadow":Landroid/view/View;
    const v2, 0x7f020047

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 314
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v13, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const v3, 0x7f0801df

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 321
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "shadow":Landroid/view/View;
    :cond_a
    new-instance v2, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$NewsAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$NewsAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$ViewListAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment$ViewListAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f030067

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f030040

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v3, 0x7f08013b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/ui/PhotoStripView;

    .line 330
    .local v15, "lpwrap":Lcom/vkontakte/android/ui/PhotoStripView;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/vkontakte/android/ui/PhotoStripView;->setCount(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x1a1a1b

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->adapter:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    const v3, 0x7f020077

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_admin"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    :cond_b
    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x0

    const-string v4, "news"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vkontakte/android/data/Posts;->buildItems(Lcom/vkontakte/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;Z)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 345
    const/16 v23, 0x0

    .line 346
    .local v23, "videoItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 347
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 348
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 349
    .local v10, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    instance-of v2, v10, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    if-eqz v2, :cond_c

    .line 350
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 351
    move-object/from16 v23, v10

    .line 355
    .end local v10    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/VideoAttachment;

    .line 356
    .local v22, "video":Lcom/vkontakte/android/VideoAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/vkontakte/android/ui/posts/BigVideoViewPostDisplayItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, v22

    invoke-direct {v4, v5, v6, v0}, Lcom/vkontakte/android/ui/posts/BigVideoViewPostDisplayItem;-><init>(IILcom/vkontakte/android/VideoAttachment;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 359
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    .end local v22    # "video":Lcom/vkontakte/android/VideoAttachment;
    .end local v23    # "videoItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x422c0000    # 43.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/LoadMoreCommentsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$6;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/LoadMoreCommentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 370
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    :goto_5
    new-instance v9, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v9}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 377
    .local v9, "ila":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment$NewsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    invoke-virtual {v9, v2}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 378
    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$1;)V

    invoke-virtual {v9, v2}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 379
    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/fragments/PostViewFragment$1;)V

    invoke-virtual {v9, v2}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 381
    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-direct {v2, v9, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const v3, 0x7f0801e0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$7;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 397
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    .line 398
    new-instance v18, Landroid/widget/ProgressBar;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 399
    .local v18, "progress":Landroid/widget/ProgressBar;
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 400
    .local v17, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "progress":Landroid/widget/ProgressBar;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$8;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$9;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 445
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateButtons()V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v3, 0x7f080139

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$10;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v3, 0x7f08013c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$11;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v3, 0x7f08013b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$12;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadVideoInfo()V

    .line 476
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/WriteBar;->setFragment(Landroid/app/Fragment;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ui/WriteBar;->setUploadType(II)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "comment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/WriteBar;->focus()V

    .line 483
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ui/WriteBar;->setAttachLimits(IZ)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const v3, 0x7f0801e1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$13;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const v3, 0x7f0801e1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020104

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const v3, 0x7f0801e1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$14;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const v3, 0x7f0801df

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$15;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 514
    const v2, 0x7f030030

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ErrorView;->setIsInline(Z)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v3, Lcom/vkontakte/android/fragments/PostViewFragment$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$16;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 527
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->scrollToComment:I

    if-eqz v2, :cond_13

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment;->list:Landroid/widget/ListView;

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 530
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->setHasOptionsMenu(Z)V

    goto/16 :goto_3

    .line 341
    .end local v9    # "ila":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 372
    :cond_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    goto/16 :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 586
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 535
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 536
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 538
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/16 v9, 0x1000

    const/16 v8, 0x800

    const v7, 0x7f0801f5

    const/4 v0, 0x0

    .line 639
    const v1, 0x7f0f000e

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 640
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->canAdmin:Z

    if-eqz v1, :cond_6

    .line 641
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v1, :cond_0

    .line 642
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v1, :cond_3

    .line 645
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 653
    :cond_1
    :goto_0
    const v1, 0x7f080204

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 654
    const v1, 0x7f080009

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 655
    const v1, 0x7f0801f9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

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
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 656
    const v0, 0x7f080203

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 657
    return-void

    .line 647
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
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 650
    :cond_6
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 651
    const v1, 0x7f0801ec

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 543
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 546
    :cond_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 664
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f0801ec

    if-ne v6, v7, :cond_4

    .line 665
    const v3, 0x7f0d00a2

    .line 666
    .local v3, "msg":I
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v10, :cond_0

    .line 667
    const v3, 0x7f0d00a7

    .line 668
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v8, :cond_1

    .line 669
    const v3, 0x7f0d00ab

    .line 670
    :cond_1
    new-instance v6, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d0086

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d037e

    new-instance v8, Lcom/vkontakte/android/fragments/PostViewFragment$17;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$17;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d018d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_2

    const v5, 0x1080027

    :cond_2
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 731
    .end local v3    # "msg":I
    :cond_3
    :goto_0
    return v10

    .line 679
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f0801f5

    if-ne v6, v7, :cond_7

    .line 680
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 681
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 685
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "edit"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 686
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v5, :cond_6

    .line 687
    const-string v5, "public"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 688
    :cond_6
    const/16 v5, 0x10e8

    invoke-virtual {p0, v1, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 689
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f08000c

    if-ne v6, v7, :cond_c

    .line 690
    const-string v2, "http://vk.com/"

    .line 691
    .local v2, "ln":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v6, :cond_9

    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 700
    :cond_8
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    .line 701
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 702
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 703
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0d0153

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 693
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    :cond_9
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v8, :cond_a

    .line 694
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 695
    :cond_a
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v10, :cond_b

    .line 696
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 697
    :cond_b
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 698
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "topic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 704
    .end local v2    # "ln":Ljava/lang/String;
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f080204

    if-ne v6, v7, :cond_f

    .line 705
    const-string v4, "wall"

    .line 706
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v5, v10, :cond_d

    .line 707
    const-string v4, "photo"

    .line 708
    :cond_d
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v5, v8, :cond_e

    .line 709
    const-string v4, "video"

    .line 710
    :cond_e
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vkontakte://vk.com/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

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

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 711
    .end local v4    # "type":Ljava/lang/String;
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f080009

    if-ne v6, v7, :cond_10

    .line 712
    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v7, 0x35

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getHeight()I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    sub-int/2addr v8, v9

    const v9, 0x7f02000e

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    goto/16 :goto_0

    .line 713
    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0801f9

    if-ne v5, v6, :cond_13

    .line 714
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 715
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "itemID"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    const-string v5, "ownerID"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    const-string v4, "post"

    .line 718
    .restart local v4    # "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v5, v10, :cond_11

    .line 719
    const-string v4, "photo"

    .line 720
    :cond_11
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v5, v8, :cond_12

    .line 721
    const-string v4, "video"

    .line 722
    :cond_12
    const-string v5, "type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 724
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "type":Ljava/lang/String;
    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f080203

    if-ne v5, v6, :cond_3

    .line 725
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/PostViewFragment$18;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$18;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/data/Posts;->publishPostponed(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 550
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 551
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 553
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 661
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1946
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V

    .line 1947
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 557
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 558
    return-void
.end method
