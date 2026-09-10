.class Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$image:I

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$v:Landroid/view/View;

    instance-of v0, v0, Lcom/vkontakte/android/ui/DialogEntryView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$v:Landroid/view/View;

    check-cast v0, Lcom/vkontakte/android/ui/DialogEntryView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter$1;->val$image:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    .line 589
    :cond_0
    return-void
.end method
