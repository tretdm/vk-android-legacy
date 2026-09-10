.class Lcom/vkontakte/android/ui/MultiAttachView$4;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;

.field private final synthetic val$item:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$4;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$4;->val$item:Landroid/widget/FrameLayout;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$4;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$4;->val$item:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->remove(I)V

    .line 307
    return-void
.end method
