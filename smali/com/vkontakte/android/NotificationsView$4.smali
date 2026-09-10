.class Lcom/vkontakte/android/NotificationsView$4;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->like(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;

.field private final synthetic val$e:Lcom/vkontakte/android/api/NotificationEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/api/NotificationEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    iput-object p2, p0, Lcom/vkontakte/android/NotificationsView$4;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 264
    return-void
.end method

.method public success(III)V
    .locals 2
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "postID"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$4;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    iput p1, v0, Lcom/vkontakte/android/api/NotificationEntry;->numLikes:I

    .line 257
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$4;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$4;->val$e:Lcom/vkontakte/android/api/NotificationEntry;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$4;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 259
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
