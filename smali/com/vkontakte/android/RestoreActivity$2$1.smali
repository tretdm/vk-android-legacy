.class Lcom/vkontakte/android/RestoreActivity$2$1;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/RestoreActivity$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$2$1;->this$1:Lcom/vkontakte/android/RestoreActivity$2;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$2$1;->this$1:Lcom/vkontakte/android/RestoreActivity$2;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity$2;->access$0(Lcom/vkontakte/android/RestoreActivity$2;)Lcom/vkontakte/android/RestoreActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$3(Lcom/vkontakte/android/RestoreActivity;I)V

    .line 67
    return-void
.end method
