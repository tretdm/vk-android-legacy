.class Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;
.super Ljava/lang/Object;
.source "PhotoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;->this$1:Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;

    iput p2, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;->this$1:Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->access$1(Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/PhotoListView;->access$12(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/GridView;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;->this$1:Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;->access$1(Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/PhotoListView;->access$12(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoListItem;

    .line 517
    .local v0, "it":Lcom/vkontakte/android/ui/PhotoListItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoListItem;->setBitmapAnimated(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v0    # "it":Lcom/vkontakte/android/ui/PhotoListItem;
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v1

    goto :goto_0
.end method
