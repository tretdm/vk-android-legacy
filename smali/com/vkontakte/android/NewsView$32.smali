.class Lcom/vkontakte/android/NewsView$32;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->deletePost(Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1534
    return-void

    .line 1533
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 4

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1520
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->remove(IILandroid/content/Context;)V

    .line 1521
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 1523
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    const-string v1, "post_id"

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1526
    const-string v1, "post"

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$32;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1527
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1528
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$32;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 1529
    return-void
.end method
