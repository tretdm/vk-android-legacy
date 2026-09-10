.class Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter$1;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter$1;->this$1:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter$1;->val$v:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter$1;->val$v:Landroid/view/View;

    const v2, 0x7f0800d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "vv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 269
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "vv":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    :cond_0
    return-void
.end method
