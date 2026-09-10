.class Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;->this$1:Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;

    iput p2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 785
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;->this$1:Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->access$1(Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;->val$item:I

    iget-object v4, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;->this$1:Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->access$1(Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 786
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 787
    const v2, 0x7f06006f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 788
    .local v1, "vv":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 789
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "vv":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 792
    :cond_0
    return-void
.end method
