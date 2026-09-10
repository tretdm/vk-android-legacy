.class Lcom/vkontakte/android/PhotoAlbumsView$3$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoAlbumsView$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$3$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$3;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$3$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$3;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$3;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$3;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 166
    return-void
.end method
