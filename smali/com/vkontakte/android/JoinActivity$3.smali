.class Lcom/vkontakte/android/JoinActivity$3;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/JoinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/JoinActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$3;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$3;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0, v1, v1}, Lcom/vkontakte/android/JoinActivity;->access$6(Lcom/vkontakte/android/JoinActivity;ZZ)V

    .line 90
    return-void
.end method
