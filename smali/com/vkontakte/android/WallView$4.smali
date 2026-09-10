.class Lcom/vkontakte/android/WallView$4;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->addHeaderViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$4;->this$0:Lcom/vkontakte/android/WallView;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/WallView$4;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/WallView$4;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/WallView$4;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/WallView$4;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/WallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView$4;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallActivity;->showProfilePhotoBox()V

    goto :goto_0
.end method
