.class Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;
.super Landroid/view/animation/Animation;
.source "ExtendedTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ExtendedTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabSwitchAnimation"
.end annotation


# instance fields
.field d:F

.field from:F

.field final synthetic this$0:Lcom/vkontakte/android/ExtendedTabBar;

.field to:F


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ExtendedTabBar;FF)V
    .locals 2
    .param p2, "fromIndex"    # F
    .param p3, "toIndex"    # F

    .prologue
    .line 280
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 281
    iput p2, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->from:F

    .line 282
    iput p3, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->to:F

    .line 283
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->to:F

    iget v1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->from:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->d:F

    .line 284
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 287
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 288
    iget v1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->from:F

    iget v2, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->d:F

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 289
    .local v0, "index":F
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    iget-object v2, p0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ExtendedTabBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/ExtendedTabBar;->access$0(Lcom/vkontakte/android/ExtendedTabBar;FF)V

    .line 292
    return-void
.end method
