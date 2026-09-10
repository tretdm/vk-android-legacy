.class Lcom/vkontakte/android/NewsView$30;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallEdit$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;

.field private final synthetic val$newComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-object p3, p0, Lcom/vkontakte/android/NewsView$30;->val$newComment:Ljava/lang/String;

    .line 1453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1475
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->val$newComment:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->access$20(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080199

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1457
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->val$newComment:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 1458
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 1460
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 1462
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v1, v2, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->remove(IILandroid/content/Context;)V

    .line 1464
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 1466
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entry"

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$30;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1468
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1469
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$30;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 1470
    return-void
.end method
