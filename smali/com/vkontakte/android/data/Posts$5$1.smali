.class Lcom/vkontakte/android/data/Posts$5$1;
.super Ljava/lang/Object;
.source "Posts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Posts$5;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/data/Posts$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Posts$5;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/vkontakte/android/data/Posts$5$1;->this$0:Lcom/vkontakte/android/data/Posts$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$5$1;->this$0:Lcom/vkontakte/android/data/Posts$5;

    iget-object v0, v0, Lcom/vkontakte/android/data/Posts$5;->val$act:Landroid/app/Activity;

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    return-void
.end method
