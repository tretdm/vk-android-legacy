.class Lcom/vkontakte/android/WallActivity$5;
.super Ljava/lang/Object;
.source "WallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallActivity$5;->this$0:Lcom/vkontakte/android/WallActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$5;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallActivity;->toggleInfo()V

    .line 220
    return-void
.end method
