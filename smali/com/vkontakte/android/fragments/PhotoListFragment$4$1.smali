.class Lcom/vkontakte/android/fragments/PhotoListFragment$4$1;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$4;

.field final synthetic val$_bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment$4;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$4;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$4$1;->val$_bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$4$1;->val$_bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    return-void
.end method
