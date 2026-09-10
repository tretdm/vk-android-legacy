.class Lcom/vkontakte/android/ui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$0(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$1(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$2(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->shouldPreload()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [I

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v2

    aput v2, v0, v5

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v6

    :goto_0
    new-array v2, v4, [Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/PhotoView;->access$4(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/PhotoView;->access$5(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-result-object v3

    aput-object v3, v2, v6

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->access$6(Lcom/vkontakte/android/ui/PhotoView;[I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V

    .line 138
    return-void

    .line 137
    :cond_0
    new-array v0, v6, [I

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView$1;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v2

    aput v2, v0, v5

    goto :goto_0
.end method
