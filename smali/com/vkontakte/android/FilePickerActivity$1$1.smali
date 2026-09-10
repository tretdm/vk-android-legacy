.class Lcom/vkontakte/android/FilePickerActivity$1$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FilePickerActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FilePickerActivity$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FilePickerActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity$1$1;->this$1:Lcom/vkontakte/android/FilePickerActivity$1;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$1$1;->this$1:Lcom/vkontakte/android/FilePickerActivity$1;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity$1;->access$0(Lcom/vkontakte/android/FilePickerActivity$1;)Lcom/vkontakte/android/FilePickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$0(Lcom/vkontakte/android/FilePickerActivity;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$1$1;->this$1:Lcom/vkontakte/android/FilePickerActivity$1;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity$1;->access$0(Lcom/vkontakte/android/FilePickerActivity$1;)Lcom/vkontakte/android/FilePickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$1(Lcom/vkontakte/android/FilePickerActivity;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$1$1;->this$1:Lcom/vkontakte/android/FilePickerActivity$1;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity$1;->access$0(Lcom/vkontakte/android/FilePickerActivity$1;)Lcom/vkontakte/android/FilePickerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity$1$1;->this$1:Lcom/vkontakte/android/FilePickerActivity$1;

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity$1;->access$0(Lcom/vkontakte/android/FilePickerActivity$1;)Lcom/vkontakte/android/FilePickerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity;->access$0(Lcom/vkontakte/android/FilePickerActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/FilePickerActivity;->access$2(Lcom/vkontakte/android/FilePickerActivity;Ljava/io/File;)Z

    goto :goto_0
.end method
