.class Lcom/vkontakte/android/PhotoAlbumsView$3;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumsView$3;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$9(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->notifyDataSetChanged()V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    new-instance v1, Lcom/vkontakte/android/PhotoAlbumsView$3$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoAlbumsView$3$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView$3;)V

    .line 167
    const-wide/16 v2, 0xc8

    .line 163
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/PhotoAlbumsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void

    .line 161
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
