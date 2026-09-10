.class Lcom/vkontakte/android/Global$1;
.super Ljava/lang/Object;
.source "Global.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bg:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/Global$1;->val$bg:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/vkontakte/android/Global$1;->val$v:Landroid/view/View;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    iget-object v0, p0, Lcom/vkontakte/android/Global$1;->val$bg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/Global$1;->val$bg:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/vkontakte/android/Global$1;->val$bg:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HighlightDrawable;->setSel(Z)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/Global$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 537
    return-void
.end method
