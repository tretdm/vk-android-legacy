.class public Lcom/vkontakte/android/SelectGeoPointActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "SelectGeoPointActivity.java"


# instance fields
.field private addressEdit:Landroid/widget/EditText;

.field private firstLocUpdate:Z

.field private locationClient:Lcom/google/android/gms/location/LocationClient;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private mapMoved:Z

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field private okBtn:Landroid/view/View;

.field private selectedPoint:Lcom/google/android/gms/maps/model/LatLng;

.field private titleEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->firstLocUpdate:Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/SelectGeoPointActivity;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapMoved:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SelectGeoPointActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapMoved:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SelectGeoPointActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->firstLocUpdate:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/SelectGeoPointActivity;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/SelectGeoPointActivity;Z)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SelectGeoPointActivity;->enableBtn(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/SelectGeoPointActivity;DD)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/SelectGeoPointActivity;->initMarker(DD)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/SelectGeoPointActivity;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->firstLocUpdate:Z

    return-void
.end method

.method private enableBtn(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const v2, 0x7f09002b

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 244
    :goto_1
    return-void

    .line 239
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz p1, :cond_2

    const/16 v0, 0xff

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 241
    :cond_2
    const/16 v0, 0x80

    goto :goto_2

    .line 242
    :cond_3
    const v1, -0x7f000001

    goto :goto_3
.end method

.method private initMarker(DD)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/vkontakte/android/SelectGeoPointActivity$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$8;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 267
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, 0x41200000    # 10.0f

    .line 55
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    .line 59
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "create_place"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080252

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const-string v2, "com.google.android.apps.maps"

    invoke-static {p0, v2}, Lcom/vkontakte/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    :cond_0
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    const v3, 0x7f080230

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 64
    const v3, 0x7f080231

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 65
    const v3, 0x7f080232

    new-instance v4, Lcom/vkontakte/android/SelectGeoPointActivity$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$1;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 74
    const v3, 0x7f080100

    new-instance v4, Lcom/vkontakte/android/SelectGeoPointActivity$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$2;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 80
    new-instance v3, Lcom/vkontakte/android/SelectGeoPointActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$3;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 234
    :goto_1
    return-void

    .line 59
    :cond_1
    const v3, 0x7f0800fd

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0, v10}, Lcom/vkontakte/android/SelectGeoPointActivity;->enableBtn(Z)V

    .line 92
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    new-instance v3, Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$4;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v2, Lcom/google/android/gms/maps/MapView;

    invoke-direct {v2, p0}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "create_place"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    const v2, 0x7f080250

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->setTitle(I)V

    .line 169
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, "sep":Landroid/view/View;
    const v2, -0x303031

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    .line 176
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    const v3, 0x7f0200b1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 177
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v6

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 178
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    const v3, 0x80001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 179
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    .line 181
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    const v3, 0x80001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 182
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    const v3, 0x7f0200ad

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 183
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v6

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 184
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 186
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    const v3, 0x7f080251

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 187
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "place_title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->addressEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "place_address"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->setContentView(Landroid/view/View;)V

    .line 193
    .end local v0    # "ll":Landroid/widget/LinearLayout;
    .end local v1    # "sep":Landroid/view/View;
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 194
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 195
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v2, :cond_3

    .line 196
    const v2, 0x7f080068

    invoke-static {p0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 197
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->finish()V

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_3
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/vkontakte/android/SelectGeoPointActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$5;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 216
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/vkontakte/android/SelectGeoPointActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$6;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 222
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/vkontakte/android/SelectGeoPointActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$7;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    goto/16 :goto_1

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 202
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 270
    const v1, 0x7f08002c

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 271
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 272
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 273
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 302
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 277
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->setResult(I)V

    .line 279
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->finish()V

    .line 281
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 294
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 288
    :cond_0
    return-void
.end method
