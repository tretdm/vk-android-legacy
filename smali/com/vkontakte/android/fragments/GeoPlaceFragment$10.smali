.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateUserPhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;)Lcom/vkontakte/android/fragments/GeoPlaceFragment;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 252
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$3(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$3(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 254
    .local v1, "gp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 271
    .end local v1    # "gp":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 255
    .restart local v1    # "gp":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$1;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$1;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 261
    .end local v1    # "gp":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$4(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09013f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 263
    .local v3, "iv":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$4(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
