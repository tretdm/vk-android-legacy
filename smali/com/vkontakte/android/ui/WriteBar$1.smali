.class Lcom/vkontakte/android/ui/WriteBar$1;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/WriteBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/WriteBar;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/WriteBar;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$1;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 99
    .local v0, "l":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 100
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$1;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v2, 0x53

    const/4 v3, 0x0

    aget v3, v0, v3

    const/high16 v4, 0x42020000    # 32.5f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const v5, 0x7f020010

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    .line 101
    return-void

    .line 98
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
