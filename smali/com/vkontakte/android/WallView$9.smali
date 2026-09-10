.class Lcom/vkontakte/android/WallView$9;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->openProfilePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$9;->this$0:Lcom/vkontakte/android/WallView;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/WallView$9;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    return-void
.end method

.method public success(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v5, 0x0

    .line 241
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/vkontakte/android/WallView$9;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900e1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [Lcom/vkontakte/android/Photo;

    .line 246
    .local v0, "arr":[Lcom/vkontakte/android/Photo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 247
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/WallView$9;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "photo"

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v3, "photo_list"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    const-string v3, "photo_index"

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v3, "username"

    iget-object v4, p0, Lcom/vkontakte/android/WallView$9;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v3, "userphoto"

    iget-object v4, p0, Lcom/vkontakte/android/WallView$9;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$7(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v3, p0, Lcom/vkontakte/android/WallView$9;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
