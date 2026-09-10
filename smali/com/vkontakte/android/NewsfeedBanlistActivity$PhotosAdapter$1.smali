.class Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;
.super Ljava/lang/Object;
.source "NewsfeedBanlistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;->this$1:Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;

    iput p2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;->this$1:Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->access$1(Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;)Lcom/vkontakte/android/NewsfeedBanlistActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    iget v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;->this$1:Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;

    invoke-static {v3}, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;->access$1(Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter;)Lcom/vkontakte/android/NewsfeedBanlistActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/NewsfeedBanlistActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$PhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v1

    goto :goto_0
.end method
