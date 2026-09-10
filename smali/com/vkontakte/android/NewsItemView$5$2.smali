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
    .line 607
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$5$2;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5$2;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 610
    return-void
.end method
