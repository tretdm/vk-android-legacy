.class Lcom/vkontakte/android/PhotoAlbumsView$7$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoAlbumsView$7;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$7$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$7;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$7$1;->this$1:Lcom/vkontakte/android/PhotoAlbumsView$7;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView$7;->access$0(Lcom/vkontakte/android/PhotoAlbumsView$7;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 291
    return-void
.end method
