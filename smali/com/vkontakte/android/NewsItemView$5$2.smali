.class Lcom/vkontakte/android/NewsItemView$5$2;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsItemView$5;->success(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsItemView$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsItemView$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$5$2;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5$2;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewsItemView$5;->access$0(Lcom/vkontakte/android/NewsItemView$5;)Lcom/vkontakte/android/NewsItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 596
    return-void
.end method
