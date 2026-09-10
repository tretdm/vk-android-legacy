.class Lcom/vkontakte/android/PhotoAlbumsView$8;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView;->invalidateList()V
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$8;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$8;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$20(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->notifyDataSetInvalidated()V

    .line 359
    return-void
.end method
