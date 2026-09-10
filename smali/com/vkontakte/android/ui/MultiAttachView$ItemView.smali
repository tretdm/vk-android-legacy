.class Lcom/vkontakte/android/ui/MultiAttachView$ItemView;
.super Landroid/widget/RelativeLayout;
.source "MultiAttachView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/MultiAttachView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemView"
.end annotation


# instance fields
.field itemImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$ItemView;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 499
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 500
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$ItemView;->itemImg:Landroid/widget/ImageView;

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$ItemView;->itemImg:Landroid/widget/ImageView;

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$ItemView;->itemImg:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiAttachView$ItemView;->addView(Landroid/view/View;)V

    .line 503
    return-void
.end method
