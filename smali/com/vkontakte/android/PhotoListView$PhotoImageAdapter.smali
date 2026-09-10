.class Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoListView;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;)Lcom/vkontakte/android/PhotoListView;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$10(Lcom/vkontakte/android/PhotoListView;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$10(Lcom/vkontakte/android/PhotoListView;)I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoListView;->access$11(Lcom/vkontakte/android/PhotoListView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->this$0:Lcom/vkontakte/android/PhotoListView;

    new-instance v1, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;-><init>(Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoListView;->post(Ljava/lang/Runnable;)Z

    .line 521
    :cond_0
    return-void
.end method
