.class Lcom/vkontakte/android/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ImageLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ImageLoader;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ImageLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ImageLoader$1;->this$0:Lcom/vkontakte/android/ImageLoader;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ImageLoader$1;->this$0:Lcom/vkontakte/android/ImageLoader;

    invoke-static {v0}, Lcom/vkontakte/android/ImageLoader;->access$0(Lcom/vkontakte/android/ImageLoader;)V

    .line 32
    return-void
.end method
