.class Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PhotoFeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v0, 0x0

    .line 403
    packed-switch p1, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 405
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 416
    packed-switch p1, :pswitch_data_0

    .line 424
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 418
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    goto :goto_0

    .line 422
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x3

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$2(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 432
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->postInvalidate()V

    goto :goto_0

    .line 434
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    iput-object p3, v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    goto :goto_1

    .line 438
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    iput-object p3, v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 442
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    iput-object p3, v0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
