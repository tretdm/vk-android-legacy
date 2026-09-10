.class Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;
.super Ljava/lang/Object;
.source "ButtonsPostDisplayItem.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->deletePost(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    iput-object p2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->val$context:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->val$context:Landroid/content/Context;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void

    .line 108
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v1, "post_id"

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string v1, "post"

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;->val$context:Landroid/content/Context;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 104
    return-void
.end method
