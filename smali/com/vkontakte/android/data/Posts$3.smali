.class final Lcom/vkontakte/android/data/Posts$3;
.super Ljava/lang/Object;
.source "Posts.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallEdit$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Posts;->saveRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$e:Lcom/vkontakte/android/NewsEntry;

.field final synthetic val$newComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-object p3, p0, Lcom/vkontakte/android/data/Posts$3;->val$newComment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$newComment:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/data/Posts;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V

    .line 256
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 237
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    const v2, 0x7f0d0209

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$newComment:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    .line 240
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 241
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v1, v2, :cond_1

    .line 244
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->remove(IILandroid/content/Context;)V

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 247
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entry"

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$3;->val$act:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void
.end method
