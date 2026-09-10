.class Lcom/vkontakte/android/data/Posts$1;
.super Ljava/lang/Object;
.source "Posts.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallPost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Posts;->publishPostponed(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;

.field private final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Posts$1;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-object p2, p0, Lcom/vkontakte/android/data/Posts$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkontakte/android/data/Posts$1;->val$runAfter:Ljava/lang/Runnable;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$1;->val$context:Landroid/app/Activity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    return-void

    .line 69
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.POST_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/vkontakte/android/data/Posts$1;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v2, "post_id"

    iget-object v3, p0, Lcom/vkontakte/android/data/Posts$1;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v2, "post"

    iget-object v3, p0, Lcom/vkontakte/android/data/Posts$1;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$1;->val$context:Landroid/app/Activity;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$1;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/NewsEntry;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 56
    .local v1, "n":Lcom/vkontakte/android/NewsEntry;
    const/16 v2, 0x800

    invoke-virtual {v1, v2, v6}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 57
    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 58
    iput p1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 60
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "entry"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$1;->val$context:Landroid/app/Activity;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$1;->val$context:Landroid/app/Activity;

    const v3, 0x7f080059

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 64
    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$1;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$1;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_0
    return-void
.end method
