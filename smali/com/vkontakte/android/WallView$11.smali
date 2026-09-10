.class Lcom/vkontakte/android/WallView$11;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->openProfilePhotos(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    iput-object p2, p0, Lcom/vkontakte/android/WallView$11;->val$view:Landroid/view/View;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    return-void
.end method

.method public success(Ljava/util/Vector;)V
    .locals 10
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
    const/4 v8, 0x0

    .line 258
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 259
    iget-object v6, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0900e2

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v0, v6, [Lcom/vkontakte/android/Photo;

    .line 263
    .local v0, "arr":[Lcom/vkontakte/android/Photo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 264
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "photo"

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v6, "photo_list"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    const-string v6, "photo_index"

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v6, "username"

    iget-object v7, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v7}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v6, "userphoto"

    iget-object v7, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v7}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_2

    .line 271
    iget-object v6, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v6, 0x5

    .line 272
    .local v4, "iw":I
    iget-object v6, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v6, 0x5

    .line 273
    .local v2, "ih":I
    iget-object v6, p0, Lcom/vkontakte/android/WallView$11;->val$view:Landroid/view/View;

    iget-object v7, p0, Lcom/vkontakte/android/WallView$11;->val$view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/vkontakte/android/WallView$11;->val$view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    invoke-static {v6, v7, v8, v4, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 274
    .local v5, "opts":Landroid/app/ActivityOptions;
    iget-object v6, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 263
    .end local v2    # "ih":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "iw":I
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Photo;

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 276
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
