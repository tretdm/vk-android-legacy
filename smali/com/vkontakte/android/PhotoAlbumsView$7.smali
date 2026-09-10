.class Lcom/vkontakte/android/PhotoAlbumsView$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$7;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumsView$7;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$7;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$7;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$20(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;->notifyDataSetChanged()V

    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$7;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    new-instance v1, Lcom/vkontakte/android/PhotoAlbumsView$7$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoAlbumsView$7$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView$7;)V

    .line 292
    const-wide/16 v2, 0xc8

    .line 288
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/PhotoAlbumsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    return-void
.end method
