.class Lcom/vkontakte/android/ExtendedTabBar$2;
.super Ljava/lang/Object;
.source "ExtendedTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ExtendedTabBar;->switchTab(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ExtendedTabBar;

.field private final synthetic val$fromIndex:F

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ExtendedTabBar;FI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    iput p2, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->val$fromIndex:F

    iput p3, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->val$index:I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->val$fromIndex:F

    iget v1, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->val$index:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    iget v1, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->val$index:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    iget v1, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->val$index:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$28(Lcom/vkontakte/android/ExtendedTabBar;I)V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$2;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$29(Lcom/vkontakte/android/ExtendedTabBar;Z)V

    .line 172
    return-void
.end method
