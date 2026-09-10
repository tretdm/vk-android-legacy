.class public Lcom/vkontakte/android/ExtendedTabBar;
.super Landroid/widget/FrameLayout;
.source "ExtendedTabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ExtendedTabBar$Tab;,
        Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;,
        Lcom/vkontakte/android/ExtendedTabBar$TabsView;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static final BAR_HEIGHT:F = 48.0f

.field private static final TAB_SPACING:F = 1.5f

.field private static final TAB_WIDTH:F = 60.0f


# instance fields
.field private actGroup:Landroid/app/ActivityGroup;

.field private animating:Z

.field private badgeBG:Landroid/graphics/drawable/Drawable;

.field private badgePaint:Landroid/graphics/Paint;

.field private barBG:Landroid/graphics/drawable/Drawable;

.field private currentTab:I

.field private customActView:Landroid/view/View;

.field private density:F

.field private dragCurrentTab:I

.field private dragOffset:F

.field private dragging:Z

.field private draggingEnabled:Z

.field private fgPaint:Landroid/graphics/Paint;

.field private highlight:Landroid/graphics/Bitmap;

.field private highlightOffset:F

.field private isNoneSelected:Z

.field private setDragTimer:Ljava/util/Timer;

.field private showTitleOverlay:Z

.field private tabs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ExtendedTabBar$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private tabsOffset:F

.field private tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

.field private textPaint:Landroid/graphics/Paint;

.field private tooltipLeft:Landroid/graphics/drawable/Drawable;

.field private tooltipMiddle:Landroid/graphics/Bitmap;

.field private tooltipRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    .line 38
    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsOffset:F

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->animating:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragging:Z

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragCurrentTab:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->draggingEnabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->isNoneSelected:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->showTitleOverlay:Z

    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/ExtendedTabBar;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    .line 38
    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsOffset:F

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->animating:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragging:Z

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragCurrentTab:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->draggingEnabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->isNoneSelected:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->showTitleOverlay:Z

    .line 66
    invoke-direct {p0}, Lcom/vkontakte/android/ExtendedTabBar;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    .line 38
    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsOffset:F

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->animating:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragging:Z

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragCurrentTab:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->draggingEnabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->isNoneSelected:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->showTitleOverlay:Z

    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/ExtendedTabBar;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ExtendedTabBar;FF)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ExtendedTabBar;->updateHighlightOffset(FF)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ExtendedTabBar;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->highlight:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->setDragTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragging:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ExtendedTabBar;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragCurrentTab:I

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ExtendedTabBar;)Lcom/vkontakte/android/ExtendedTabBar$TabsView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ExtendedTabBar;FI)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ExtendedTabBar;->switchTab(FI)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->barBG:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ExtendedTabBar;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->isNoneSelected:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ExtendedTabBar;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->animating:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ExtendedTabBar;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsOffset:F

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgeBG:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/ExtendedTabBar;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->showTitleOverlay:Z

    return v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->fgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tooltipMiddle:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tooltipLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tooltipRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/ExtendedTabBar;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragCurrentTab:I

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/ExtendedTabBar;I)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ExtendedTabBar;->doSwitchTab(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ExtendedTabBar;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    return v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/ExtendedTabBar;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/ExtendedTabBar;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->animating:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ExtendedTabBar;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->draggingEnabled:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ExtendedTabBar;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragging:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ExtendedTabBar;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->highlightOffset:F

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ExtendedTabBar;F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragOffset:F

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ExtendedTabBar;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->setDragTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ExtendedTabBar;)F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->dragOffset:F

    return v0
.end method

.method private doSwitchTab(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0}, Lcom/vkontakte/android/ExtendedTabBar;->removeCustomActivity()V

    .line 188
    iput-boolean v5, p0, Lcom/vkontakte/android/ExtendedTabBar;->isNoneSelected:Z

    .line 189
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    .line 190
    .local v2, "tab":Lcom/vkontakte/android/ExtendedTabBar$Tab;
    iget-object v4, v2, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 191
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->actGroup:Landroid/app/ActivityGroup;

    invoke-virtual {v4}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/vkontakte/android/ExtendedTabBar;->actGroup:Landroid/app/ActivityGroup;

    iget-object v9, v2, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentActivity:Ljava/lang/Class;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 192
    .local v3, "win":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    .line 193
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v4, 0x42400000    # 48.0f

    iget v6, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 195
    iget-object v4, v2, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v4, v2, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->addView(Landroid/view/View;I)V

    .line 201
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "win":Landroid/view/Window;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 205
    return-void

    .line 198
    .end local v0    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->actGroup:Landroid/app/ActivityGroup;

    invoke-virtual {v4}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/vkontakte/android/ExtendedTabBar;->actGroup:Landroid/app/ActivityGroup;

    iget-object v9, v2, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentActivity:Ljava/lang/Class;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    goto :goto_0

    .line 202
    .restart local v0    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v6, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    if-ne v0, p1, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_3
    const/16 v4, 0x8

    goto :goto_2
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/ActivityGroup;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can only be used in ActivityGroup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityGroup;

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->actGroup:Landroid/app/ActivityGroup;

    .line 79
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ExtendedTabBar;->setWillNotDraw(Z)V

    .line 80
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->barBG:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgeBG:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->highlight:Landroid/graphics/Bitmap;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->textPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a80000    # 21.0f

    iget v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/ExtendedTabBar;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgePaint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->badgePaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 105
    new-instance v1, Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;-><init>(Lcom/vkontakte/android/ExtendedTabBar;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    .line 106
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ExtendedTabBar;->setAnimationCacheEnabled(Z)V

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->fgPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->fgPaint:Landroid/graphics/Paint;

    const v2, 0x18ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    return-void

    .line 96
    :cond_1
    const v1, 0x358637bd    # 1.0E-6f

    goto :goto_0
.end method

.method private removeCustomActivity()V
    .locals 3

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->isNoneSelected:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->customActView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ExtendedTabBar;->removeView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->actGroup:Landroid/app/ActivityGroup;

    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v1, "custom_intent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 212
    :cond_0
    return-void
.end method

.method private switchTab(FI)V
    .locals 5
    .param p1, "fromIndex"    # F
    .param p2, "index"    # I

    .prologue
    const-wide/16 v3, 0xc8

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    if-gez p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    int-to-float v1, p2

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 164
    invoke-direct {p0, p2}, Lcom/vkontakte/android/ExtendedTabBar;->doSwitchTab(I)V

    .line 166
    :cond_2
    new-instance v0, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;

    int-to-float v1, p2

    invoke-direct {v0, p0, p1, v1}, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;-><init>(Lcom/vkontakte/android/ExtendedTabBar;FF)V

    .line 167
    .local v0, "anim":Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/ExtendedTabBar$TabSwitchAnimation;->setDuration(J)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ExtendedTabBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->animating:Z

    .line 172
    new-instance v1, Lcom/vkontakte/android/ExtendedTabBar$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/ExtendedTabBar$2;-><init>(Lcom/vkontakte/android/ExtendedTabBar;FI)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/vkontakte/android/ExtendedTabBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private switchTab(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 157
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/vkontakte/android/ExtendedTabBar;->switchTab(FI)V

    .line 158
    return-void
.end method

.method private updateHighlightOffset(FF)V
    .locals 7
    .param p1, "index"    # F
    .param p2, "w"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x42760000    # 61.5f

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 261
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    sub-float v0, p2, v1

    .line 262
    .local v0, "maxTabsOffset":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 263
    neg-float v1, v0

    iget-object v2, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsOffset:F

    .line 266
    :goto_0
    mul-float v1, p1, v5

    iget v2, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->highlightOffset:F

    .line 267
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->invalidate()V

    .line 268
    return-void

    .line 265
    :cond_0
    div-float v1, p2, v6

    iget-object v2, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsOffset:F

    goto :goto_0
.end method


# virtual methods
.method public addTab(IILjava/lang/Class;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "contentActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ExtendedTabBar$Tab;-><init>(Lcom/vkontakte/android/ExtendedTabBar;Lcom/vkontakte/android/ExtendedTabBar$Tab;)V

    .line 128
    .local v0, "t":Lcom/vkontakte/android/ExtendedTabBar$Tab;
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->title:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object p3, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentActivity:Ljava/lang/Class;

    .line 131
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 133
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->doSwitchTab(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    return v0
.end method

.method public getTabsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    return-object v0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->draggingEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 118
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->barBG:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    int-to-float v2, p5

    const/high16 v3, 0x42400000    # 48.0f

    iget v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, p2, v2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    int-to-float v0, v0

    sub-int v1, p4, p2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->updateHighlightOffset(FF)V

    .line 124
    :cond_0
    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 2
    .param p1, "tab"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 246
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    if-eqz p2, :cond_2

    .line 248
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ExtendedTabBar;->switchTab(I)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ExtendedTabBar;->doSwitchTab(I)V

    .line 252
    iput p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    .line 253
    iget v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->updateHighlightOffset(FF)V

    goto :goto_0
.end method

.method public setDraggingEnabled(Z)V
    .locals 0
    .param p1, "draggingEnabled"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->draggingEnabled:Z

    .line 466
    return-void
.end method

.method public setShowTitleOverlay(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/vkontakte/android/ExtendedTabBar;->showTitleOverlay:Z

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->invalidate()V

    .line 115
    return-void
.end method

.method public setTabBadge(ILjava/lang/String;)V
    .locals 3
    .param p1, "tab"    # I
    .param p2, "badge"    # Ljava/lang/String;

    .prologue
    .line 140
    if-gez p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 142
    new-instance v0, Lcom/vkontakte/android/ExtendedTabBar$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/ExtendedTabBar$1;-><init>(Lcom/vkontakte/android/ExtendedTabBar;ILjava/lang/String;)V

    .line 144
    const-wide/16 v1, 0x3e8

    .line 142
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ExtendedTabBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iput-object p2, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->badge:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->postInvalidate()V

    goto :goto_0
.end method

.method public startCustomIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 215
    invoke-direct {p0}, Lcom/vkontakte/android/ExtendedTabBar;->removeCustomActivity()V

    .line 216
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->isNoneSelected:Z

    .line 217
    iput v6, p0, Lcom/vkontakte/android/ExtendedTabBar;->currentTab:I

    .line 218
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->actGroup:Landroid/app/ActivityGroup;

    invoke-virtual {v4}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    const-string v5, "custom_intent"

    invoke-virtual {v4, v5, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 219
    .local v3, "win":Landroid/view/Window;
    if-nez v3, :cond_0

    .line 235
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "actView":Landroid/view/View;
    iput-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar;->customActView:Landroid/view/View;

    .line 224
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v4, 0x42400000    # 48.0f

    iget v5, p0, Lcom/vkontakte/android/ExtendedTabBar;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 226
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/vkontakte/android/ExtendedTabBar;->addView(Landroid/view/View;I)V

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 234
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabsView:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->postInvalidate()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 231
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar;->tabs:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->contentView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
