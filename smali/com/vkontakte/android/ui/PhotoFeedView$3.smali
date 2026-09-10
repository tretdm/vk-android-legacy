.class Lcom/vkontakte/android/ui/PhotoFeedView$3;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->makePages(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$3;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$8(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 165
    return-void
.end method
